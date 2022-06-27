-- many settings are default in neovim

-- vim.cmd 'syntax on'
-- vim.cmd 'filetype plugin indent on'
vim.g.mapleader = ' ' -- leader key is space
vim.g.vimsyn_embed = 'lPr'

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.hidden = true
vim.opt.scrolloff = 4
vim.opt.cursorline = true
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true
vim.opt.wildmenu = true
vim.opt.swapfile = false
-- better search
vim.opt.incsearch = true
vim.opt.hlsearch = true
-- formatting
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.wrap = false
-- misceallaneous
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.lazyredraw = true
-- undodir
vim.opt.undofile = true
vim.opt.undolevels = 2000
vim.opt.undodir = vim.fn.stdpath('config') .. '/undodir/'

-- vim.o.completeopt = 'menu,menuone,noinsert'
-- vim.o.errorbells = false
-- vim.o.foldmethod = 'manual'
-- vim.opt.formatoptions:append 'jnrql'
-- vim.opt.formatoptions:remove '2tac'
-- vim.o.ignorecase = true
-- vim.o.inccommand = 'split'
-- vim.o.laststatus = 2
-- vim.o.mouse = 'n'
-- vim.o.path = '.,**'
-- vim.opt.shortmess:append 'c'
-- vim.o.showtabline = 1
-- vim.o.smartcase = true
-- vim.o.smartindent = true
-- vim.o.softtabstop = 2
-- vim.o.termguicolors = true
-- vim.o.wildmode = 'full'
-- vim.o.wildoptions = 'pum'
-- vim.o.wrap = false
-- set wildmode=longest,list,full
-- set clipboard+=unnamedplus
-- :se mouse+=a
-- set noswapfile
