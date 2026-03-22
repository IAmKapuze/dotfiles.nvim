return {
  'neovim/nvim-lspconfig',

  event = { "BufReadPre", "BufNewFile" },

  init = function()
    local ok, wk = pcall(require, "which-key")
    if ok then
      wk.add({
        { "<leader>l", group = "[l]sp ..." },
        { "<leader>lg", group = "[g]oto ...", },
      })
    end
  end,

  keys = {
    { "<leader>lgD", vim.lsp.buf.declaration,                            desc = "LSP: goto [D]eclaration" },
    { "<leader>lgd", "<cmd>Telescope lsp_definitions<CR>",               desc = "LSP: goto [d]efinition" },
    { "<leader>lgr", "<cmd>Telescope lsp_references<CR>",                desc = "LSP: goto [r]eferences" },
    { "<leader>lgi", "<cmd>Telescope lsp_implementations<CR>",           desc = "LSP: goto [i]mplementation" },
    { "<leader>lgt", "<cmd>Telescope lsp_type_definitions<CR>",          desc = "LSP: goto [t]ype definition" },
    { "<leader>lgs", "<cmd>Telescope lsp_document_symbols<CR>",          desc = "LSP: goto document [s]ymbols" },
    { "<leader>lgw", "<cmd>Telescope lsp_dynamic_workspace_symbols<CR>", desc = "LSP: goto [w]orkspace symbols" },
    { "<leader>lr",  vim.lsp.buf.rename,                                 desc = "LSP: [r]ename symbol" },
    { "<leader>lc",  vim.lsp.buf.code_action,                            desc = "LSP: [c]ode action" },
    { "<leader>lK",  vim.lsp.buf.hover,                                  desc = "LSP: symbol documentation" },
    { "<leader>ld",  vim.diagnostic.open_float,                          desc = "LSP: show [d]iagnostic" },
  },

  config = function()
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('lsp-highlight', { clear = true }),
      callback = function(event)
        local client = vim.lsp.get_client_by_id(event.data.client_id)
        if client and client.server_capabilities.documentHighlightProvider then
          vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
            buffer = event.buf,
            callback = vim.lsp.buf.document_highlight,
          })

          vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
            buffer = event.buf,
            callback = vim.lsp.buf.clear_references,
          })
        end
      end,
    })
  end
}
