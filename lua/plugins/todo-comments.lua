return {
  "folke/todo-comments.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  init = function()
    local ok_wk, wk = pcall(require, 'which-key')
    local ok_telescope, _ = pcall(require, 'telescope')
    if ok_wk and ok_telescope then
      wk.add({
        { "<leader>st", group = "[t]odo ..." },
      })
    end
  end,

  keys = function()
    local ok_telescope, _ = pcall(require, 'telescope')

    if not ok_telescope then return {} end

    return {
      { "<leader>stt", "<cmd>TodoTelescope<CR>",                           desc = "Search: all [t]odos" },
      { "<leader>sto", "<cmd>TodoTelescope keywords=TODO<CR>",             desc = "Search: todo t[o]do" },
      { "<leader>stf", "<cmd>TodoTelescope keywords=FIX,FIXME,FIXIT<CR>",  desc = "Search: todo [f]ix" },
      { "<leader>stb", "<cmd>TodoTelescope keywords=BUG<CR>",              desc = "Search: todo [b]ug" },
      { "<leader>stw", "<cmd>TodoTelescope keywords=WARN,WARNING<CR>",     desc = "Search: todo [w]arn" },
      { "<leader>sth", "<cmd>TodoTelescope keywords=HACK<CR>",             desc = "Search: todo [h]ack" },
      { "<leader>stn", "<cmd>TodoTelescope keywords=NOTE,INFO<CR>",        desc = "Search: todo [n]ote" },
      { "<leader>stp", "<cmd>TodoTelescope keywords=PERF,PERFORMANCE<CR>", desc = "Search: todo [p]erf" },
    }
  end,

  opts = {
    signs = false,
    keywords = {
      TFS = { color = "hint" },
    },
    highlight = {
      -- Dot at end of pattern as temp workaround for:
      -- https://github.com/folke/todo-comments.nvim/issues/380
      pattern = [[.*<(KEYWORDS).]],
      before = "fg",
      keyword = "wide_fg",
      after = "fg",
    },
    search = {
      pattern = [[\b(KEYWORDS)\b]]
    },
  },
}
