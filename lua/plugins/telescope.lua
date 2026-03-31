return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  event = 'VeryLazy',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-ui-select.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
  },

  init = function()
    local ok, wk = pcall(require, "which-key")
    if ok then
      wk.add({
          { "<leader>s", group = "[s]earch by Telescope ..." },
      })
    end
  end,

  opts = {
    extensions = {
      ["ui-select"] = {
        require("telescope.themes").get_dropdown(),
      },
    },
  },

  keys = function()
    local builtin = require 'telescope.builtin'

    return {
      { "<leader><leader>", "<cmd>Telescope<CR>",                     desc = "Telescope" },
      { "<leader>ss",       "<cmd>Telescope<CR>",                     desc = "Search: [s]elect builtin" },
      { "<leader>sh",       "<cmd>Telescope help_tags<CR>",           desc = "Search: [h]elp" },
      { "<leader>sg",       "<cmd>Telescope live_grep<CR>",           desc = "Search: [g]rep" },
      { "<leader>sf",       "<cmd>Telescope find_files<CR>",          desc = "Search: [f]iles" },
      { "<leader>sb",       "<cmd>Telescope buffers<CR>",             desc = "Search: [b]uffers" },
      { "<leader>sj",       "<cmd>Telescope jumplist<CR>",            desc = "Search: [j]umplist" },
      { '<leader>s"',       "<cmd>Telescope registers<CR>",           desc = "Search: [r]egisters" },
      { '<leader>sm',       "<cmd>Telescope marks<CR>",               desc = "Search: [m]arks" },
      { "<leader>sk",       "<cmd>Telescope keymaps<CR>",             desc = "Search: [k]eymaps" },
      { "<leader>sc",       "<cmd>Telescope commands<CR>",            desc = "Search: [c]ommands" },
      { "<leader>sw",       "<cmd>Telescope grep_string<CR>",         desc = "Search: current [w]ord" },
      { "<leader>sD",       "<cmd>Telescope diagnostics<CR>",         desc = "Search: [d]iagnostics (workspace)" },
      { "<leader>sd",       "<cmd>Telescope diagnostics bufnr=0<CR>", desc = "Search: [d]iagnostics (buffer)" },
      { "<leader>sr",       "<cmd>Telescope resume<CR>",              desc = "Search: [r]esume" },
      { "<leader>s.",       "<cmd>Telescope oldfiles<CR>",            desc = "Search: recent files [.]" },
      {
        "<leader>s/",
        function()
          builtin.current_buffer_fuzzy_find (
            require('telescope.themes').get_dropdown {
              winblend = 10,
              previewer = false,
            }
          )
        end,
        desc = "Search: in current buffer [/]"
      },
      {
        "<leader>so",
        function()
          builtin.live_grep {
            grep_open_files = true,
            prompt_title = 'Live Grep in Open Files',
          }
        end,
        desc = "Search: grep [o]pen files"
      },
      {
        "<leader>sn",
        function()
          builtin.find_files {
            cwd = vim.fn.stdpath 'config'
          }
        end,
        desc = "Search: [n]eovim files"
      },
    }
  end,

  config = function(_, opts)
    local telescope = require('telescope')
    telescope.setup(opts)
    pcall(telescope.load_extension, 'fzf')
    pcall(telescope.load_extension, 'ui-select')
  end,
}
