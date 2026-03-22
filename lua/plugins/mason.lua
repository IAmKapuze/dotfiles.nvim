return {
  "mason-org/mason.nvim",

  init = function()
    local ok, wk = pcall(require, "which-key")
    if ok then
      wk.add({
        { "<leader>l", group = "[l]sp ..." },
      })
    end
  end,

  opts = {},

  keys = {
    { "<leader>lm", "<cmd>Mason<CR>", desc = "LSP: [m]ason" },
  },
}
