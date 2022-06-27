-- Package management with packer
-- Automatically install packer
local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = vim.fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "kyazdani42/nvim-web-devicons"

  -- Code completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'saadparwaiz1/cmp_luasnip'

  -- Nvim Tree
  use "kyazdani42/nvim-tree.lua"

  -- Telescope
  use "nvim-telescope/telescope.nvim"

  use {
      "numToStr/Comment.nvim",
      config = function()
          require('Comment').setup()
      end
  }

  -- Colorschemes
  use "lunarvim/colorschemes" --
  use "Mofiqul/dracula.nvim"
  use "EdenEast/nightfox.nvim"
  use "folke/tokyonight.nvim"
  use "lunarvim/darkplus.nvim"
  use "rose-pine/neovim"
  use "rebelot/kanagawa.nvim"

  -- Lualine
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  
  -- bufferline
  use "akinsho/bufferline.nvim"

  -- LSP
  use "neovim/nvim-lspconfig"

  use "moll/vim-bbye"
  -- Git
  use 'tpope/vim-fugitive'
  use "lewis6991/gitsigns.nvim"

  -- Vimscript
  use 'tpope/vim-surround'
  use 'ap/vim-css-color'
  use 'vimwiki/vimwiki'

  -- snippet
  use 'L3MON4D3/LuaSnip'


  -- other
  use 'hoschi/yode-nvim'
  use 'onsails/lspkind-nvim'

    -- use 'christoomey/vim-system-copy'
    -- use 'milisims/nvim-luaref'
    -- use 'numToStr/Comment.nvim'
    -- use 'tpope/vim-repeat'
  --   "iamcco/markdown-preview.nvim",
  --   "nvim-treesitter/nvim-treesitter",
  --   "nyngwang/NeoZoom.lua",
  --   "tzachar/cmp-tabnine",
  -- use "ChristianChiarulli/nvim-ts-rainbow"
  -- use "JoosepAlviste/nvim-ts-context-commentstring"
  -- use "L3MON4D3/LuaSnip" --snippet engine
  -- use "MattesGroeger/vim-bookmarks"
  -- use "Pocco81/DAPInstall.nvim"
  -- use "Shatur/neovim-session-manager"
  -- use "ThePrimeagen/harpoon"
  -- use "ahmedkhalf/project.nvim"
  -- use "akinsho/toggleterm.nvim"
  -- use "andymass/vim-matchup"
  -- use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight
  -- use "b0o/SchemaStore.nvim"
  -- use "blackCauldron7/surround.nvim"
  -- use "f-person/git-blame.nvim"
  -- use "filipdutescu/renamer.nvim"
  -- use "folke/todo-comments.nvim"
  -- use "folke/which-key.nvim"
  -- use "folke/zen-mode.nvim"
  -- use "goolord/alpha-nvim"
  -- use "hrsh7th/cmp-cmdline" -- cmdline completions
  -- use "hrsh7th/cmp-emoji"
  -- use "hrsh7th/cmp-path" -- path completions
  -- use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  -- use "karb94/neoscroll.nvim"
  -- use "kevinhwang91/nvim-bqf"
  -- use "lewis6991/impatient.nvim"
  -- use "lukas-reineke/indent-blankline.nvim"
  -- use "lunarvim/vim-solidity"
  -- use "mattn/vim-gist"
  -- use "mattn/webapi-vim"
  -- use "metakirby5/codi.vim"
  -- use "mfussenegger/nvim-dap"
  -- use "mfussenegger/nvim-jdtls"
  -- use "mizlan/iswap.nvim"
  -- use "monaqa/dial.nvim"
  -- use "nacro90/numb.nvim"
  -- use "norcalli/nvim-colorizer.lua"
  -- use "nvim-telescope/telescope-media-files.nvim"
  -- use "nvim-telescope/telescope.nvim"
  -- use "nvim-treesitter/playground"
  -- use "phaazon/hop.nvim"
  -- use "rafamadriz/friendly-snippets" -- a bunch of snippets to use
  -- use "ray-x/lsp_signature.nvim"
  -- use "rcarriga/nvim-dap-ui"
  -- use "rcarriga/nvim-notify"
  -- use "romgrk/nvim-treesitter-context"
  -- use "ruifm/gitlinker.nvim"
  -- use "simrat39/symbols-outline.nvim"
  -- use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
  -- use "theHamsta/nvim-dap-virtual-text"
  -- use "tom-anders/telescope-vim-bookmarks.nvim"
  -- use "tversteeg/registers.nvim"
  -- use "unblevable/quick-scope"
  -- use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  -- use "windwp/nvim-spectre"
  -- use "windwp/nvim-ts-autotag"
  -- use 'David-Kunz/cmp-npm' -- doesn't seem to work
  -- use { "nvim-telescope/telescope-ui-select.nvim" }
-- 	-- use 'Mofiqul/vscode.nvim'
-- 	-- use 'TimUntersberger/neogit'
-- 	-- use 'alaviss/nim.nvim'
-- 	-- use 'kassio/neoterm'
-- 	-- use 'vhyrro/neorg'
-- 	use 'David-Kunz/jester'
-- 	use 'lewis6991/gitsigns.nvim'
-- 	use 'mfussenegger/nvim-dap'
-- 	use 'nvim-lua/popup.nvim'
-- 	use 'nvim-telescope/telescope-dap.nvim'
-- 	use 'nvim-telescope/telescope.nvim'
-- 	use 'ryanoasis/vim-devicons'
-- 	use 'theHamsta/nvim-dap-virtual-text'
-- 	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
--   -- use 'Th3Whit3Wolf/onebuddy'
--   -- use 'ahmedkhalf/project.nvim'
--   -- use 'ggandor/lightspeed.nvim'
--   -- use 'junegunn/goyo.vim'
--   -- use 'kdheepak/lazygit.nvim'
--   -- use 'navarasu/onedark.nvim'
--   -- use 'p00f/nvim-ts-rainbow'
--   -- use 'shaunsingh/nord.nvim'
--   -- use 'tamago324/lir.nvim'
--   -- use 'tjdevries/colorbuddy.vim'
--   use 'David-Kunz/cmp-npm'
--   use 'David-Kunz/treesitter-unit'
--   use 'TimUntersberger/neogit'
--   use 'hrsh7th/vim-vsnip'
--   use 'hrsh7th/vim-vsnip-integ'
--   use 'marko-cerovac/material.nvim'
--   use 'mhartington/formatter.nvim'
--   use 'sindrets/diffview.nvim'
-- Plug 'github/copilot.vim'
-- Plug 'mattn/emmet-vim'
-- Plug 'tpope/vim-speeddating'
-- require('packer').startup(function(use)
-- vim.cmd [[packadd packer.nvim]]

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
----------------------------Packer
