-- inspired by many but notably:
-- https://github.com/ChristianChiarulli/nvim
-- https://github.com/smithbm2316/vimconf-2021
-- https://github.com/ericmurphyxyz/archrice
-- https://github.com/ThePrimeagen/.dotfiles/blob/master/nvim/.config/nvim/init.vim
-- https://github.com/David-Kunz/vim/blob/master/init.lua

----------------------------Options
require 'user/options'
----------------------------Keymappings
require 'user/keymappings'
----------------------------Plugins
require 'user/plugins'
------------------------------------- Colorscheme
vim.cmd[[colorscheme dracula]]
------------------------------------- Comment
require('Comment').setup()
------------------------------------- lualine
require('lualine').setup()
------------------------------------- lualine
require('bufferline').setup()
------------------------------------- bbye
require 'user/bbye'

require('lspconfig').pyright.setup{}

-- vim.g.vimwiki_list = {{path = '~/.config/nvim/vimwiki/'}}

require 'user/nvim-tree'



----------------------------Options
-- -- default options
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

-- Setup nvim-cmp
local cmp = require "cmp"

local lspkind = require "lspkind"



cmp.setup {
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  mapping = {
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm { select = true },
    -- Right is for ghost_text to behave like terminal
    ["<Right>"] = cmp.mapping.confirm { select = true },
    ["<C-e>"] = cmp.mapping.close(),
    ["<Down>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Select },
    ["<Up>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Select },
  },
  experimental = {
    ghost_text = true,
  },
  window = { documentation = cmp.config.window.bordered(), },
  sources = {
    { name = "nvim_lsp" },
    { name = "treesitter" },
    { name = "luasnip" },
    { name = "path" },
    {
      name = "buffer",
      options = {
        get_bufnrs = function()
          return vim.api.nvim_list_bufs()
        end,
      },
    },
    { name = "spell" },
  },
  formatting = {
    format = function(entry, vim_item)
      vim_item.kind = string.format("%s %s", lspkind.presets.default[vim_item.kind], vim_item.kind)
      -- See where 'Text' is coming from in you completion menu
      vim_item.menu = ({
        nvim_lsp = "ﲳ",
        nvim_lua = "",
        treesitter = "",
        path = "ﱮ",
        buffer = "﬘",
        zsh = "",
        vsnip = "",
        spell = "暈",
      })[entry.source.name]

      return vim_item
    end,
  },
}

