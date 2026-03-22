return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  init = function()
    local ok, wk = pcall(require, "which-key")
    if ok then
      wk.add({
        { "<leader>e", group = 'File [e]xplorer ...' },
      })
    end
  end,

  keys = {
    { "<leader>ee", "<cmd>NvimTreeToggle<CR>",   desc = "Toggle [e]xplorer" },
    { "<leader>eo", "<cmd>NvimTreeFocus<CR>",    desc = "Explorer f[o]cus" },
    { "<leader>eE", "<cmd>NvimTreeFindFile<CR>", desc = "[E]xplore current file" },
  },

  opts = {
    filesystem_watchers = {
      enable = true,
    },
    git = {
      ignore = false,
    },
    view = {
      width = 40,
    },
    on_attach = function(bufnr)
      local api = require("nvim-tree.api")

      local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      api.config.mappings.default_on_attach(bufnr)
      vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
    end,
  },
}
