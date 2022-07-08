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
  -- use "hrsh7th/cmp-cmdline" -- cmdline completions
  -- use "hrsh7th/cmp-emoji"

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

  -- Treesitter
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use "moll/vim-bbye"
  -- Git
  use 'tpope/vim-fugitive'
  use "lewis6991/gitsigns.nvim"
  use 'TimUntersberger/neogit'

  -- Vimscript
  use 'tpope/vim-surround'
  use 'ap/vim-css-color'
  use 'vimwiki/vimwiki'
    -- use 'tpope/vim-repeat'

  -- snippet
  use 'L3MON4D3/LuaSnip'

  -- debugging
  -- use 'mfussenegger/nvim-dap'
  -- use 'nvim-telescope/telescope-dap.nvim'
  -- use 'mfussenegger/nvim-dap-python'

  -- other
  use 'hoschi/yode-nvim'
  use 'rcarriga/nvim-dap-ui'
  use 'theHamsta/nvim-dap-virtual-text'
  use 'onsails/lspkind-nvim'
  use 'tpope/vim-speeddating'
  -- use "ahmedkhalf/project.nvim"
  use "andymass/vim-matchup"
  use "folke/todo-comments.nvim"

  -- use "phaazon/hop.nvim"
  -- use "rcarriga/nvim-notify"
-- 	-- use 'kassio/neoterm'
-- 	use 'nvim-lua/popup.nvim'
--   -- use 'ggandor/lightspeed.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
----------------------------Packer
