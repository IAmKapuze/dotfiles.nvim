return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    ignore = "^$",
  },
  keys = function()
    local api = require("Comment.api")

    local function comment(toggle_mode)
      -- TODO Refine
      return function()
        if vim.fn.mode():match('[vV]') then
          vim.api.nvim_feedkeys(
            vim.api.nvim_replace_termcodes("<ESC>", true, false, true),
            "nx",
            false
          )
          toggle_mode(vim.fn.visualmode())
        else
          toggle_mode.current()
        end
      end
    end

    return {
      { "<leader>/", comment(api.toggle.linewise),  mode = { "n", "x" }, desc = "Comment line //"    },
      { "<leader>?", comment(api.toggle.blockwise), mode = { "n", "x" }, desc = "Comment block /**/" },
    }
  end,
}
