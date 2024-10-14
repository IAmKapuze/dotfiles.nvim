-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Nerd Font installed
vim.g.have_nerd_font = false

-- Make line numbers default
vim.opt.number = true

-- Don't show the mode, since it's already in status line
vim.opt.showmode = false

-- Sync clipboard
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
--  Every wrapped line will continue visually indented
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Set highlight on search
vim.opt.hlsearch = true

-- Enable diff linematch
vim.opt.diffopt:append "linematch:60"

-- Set indent opts
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- Set shell to zsh
vim.opt.shell = "/usr/bin/zsh"
