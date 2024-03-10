return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
    opts = {
      ensure_installed = { 'bash', 'c', 'cpp', 'cmake', 'html', 'lua', 'markdown', 'python', 'vim', 'vimdoc' },
      auto_install = true,
      highlight = {
        enable = true
      },
      indent = {
        enable = true
      },
    },
  },
}
