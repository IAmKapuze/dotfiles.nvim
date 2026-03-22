return {
  'lewis6991/gitsigns.nvim',

  event = { "BufReadPre", "BufNewFile" },

  init = function()
    local ok, wk = pcall(require, "which-key")
    if ok then
      wk.add({
          { "<leader>g", group = "[g]it ..." },
      })
    end
  end,

  keys = {
    { "]h",         "<cmd>Gitsigns next_hunk<CR>",                 mode = { "n", "v" }, desc = "Git: jump to next [h]unk" },
    { "[h",         "<cmd>Gitsigns prev_hunk<CR>",                 mode = { "n", "v" }, desc = "Git: jump to previous [h]unk" },
    { "<leader>gs", "<cmd>Gitsigns stage_hunk<CR>",                mode = { "n" },      desc = "Git: [s]tage hunk" },
    { "<leader>gs", function()
      require("gitsigns").stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
    end,                                                           mode = { "v" },      desc = "Git: [s]tage hunk" },
    { "<leader>gS", "<cmd>Gitsigns stage_buffer<CR>",              mode = { "n" },      desc = "Git: [S]tage buffer" },
    { "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>",                mode = { "n" },      desc = "Git: [r]eset hunk" },
    { "<leader>gr", function()
      require("gitsigns").reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
    end,                                                           mode = { "v" },      desc = "Git: [r]eset hunk" },
    { "<leader>gR", "<cmd>Gitsigns reset_buffer<CR>",              mode = { "n" },      desc = "Git: [R]eset buffer" },
    { "<leader>gu", "<cmd>Gitsigns undo_stage_hunk<CR>",           mode = { "n", "v" }, desc = "Git: [u]nstage hunk" },
    { "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>",              mode = { "n", "v" }, desc = "Git: [p]review hunk" },
    { "<leader>gb", "<cmd>Gitsigns blame_line<CR>",                mode = { "n", "v" }, desc = "Git: [b]lame line" },
    { "<leader>gd", "<cmd>Gitsigns diffthis<CR>",                  mode = { "n", "v" }, desc = "Git: [d]iff against index" },
    { "<leader>gD", "<cmd>Gitsigns diffthis '~'<CR>",              mode = { "n", "v" }, desc = "Git: [D]iff against last commit" },
    { "<leader>gt", "<cmd>Gitsigns toggle_current_line_blame<CR>", mode = { "n" },      desc = "Git: [t]oggle blame lines" },
    { "<leader>gx", "<cmd>Gitsigns toggle_deleted<CR>",            mode = { "n" },      desc = "Git: toggle show deleted" },
    { "ih",         ":<C-U>Gitsigns select_hunk<CR>",              mode = { "o", "x" }, desc = "Git: Select [i]nner hunk" },
    { "ah",         ":<C-U>Gitsigns select_hunk<CR>",              mode = { "o", "x" }, desc = "Git: Select [a]round hunk" },
  },

  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
      untracked = { text = '|' }
    },
    preview_config = {
      border = "rounded",
    },
  },
}
