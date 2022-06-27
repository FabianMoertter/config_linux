local opts = { noremap = true, silent = true }

-- delete text without yanking
vim.api.nvim_set_keymap('n', '<leader>d', '"_d', opts)
vim.api.nvim_set_keymap('v', '<leader>d', '"_d', opts)

-- jj to quickly exit insert mode 
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', opts)
vim.api.nvim_set_keymap('n', '<c-s>', ':w<CR>', opts)

-- highlight yank for a brief second for visual feedback
vim.cmd 'autocmd! TextYankPost * lua vim.highlight.on_yank { on_visual = false }'

-- remap Y to yank to end of line
vim.api.nvim_set_keymap('n', 'Y', 'y$', { noremap = true })
vim.api.nvim_set_keymap('v', 'Y', 'y$', { noremap = true })

-- delete text without yanking
vim.api.nvim_set_keymap('n', '<leader>d', '"_d', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>d', '"_d', { noremap = true })

-- turn off search highlighting
vim.api.nvim_set_keymap('n', '<leader>hl', ':nohlsearch<cr>', { noremap = true })

-- neovim terminal can exit to normal mode with <esc> now
vim.api.nvim_set_keymap('t', '<esc>', [[ <c-\><c-n> ]], { noremap = true })

-- swap between light and dark themes for rose-pine (Toggle Theme)
vim.api.nvim_set_keymap(
  'n',
  '<leader>tt',
  [[<cmd>lua require('rose-pine.functions').toggle_variant({ 'moon', 'dawn' })<cr>]],
  { noremap = true }
)
-- these are for my sanity :)
-- vim.api.nvim_set_keymap('n', '<leader>fj', [[<cmd>Telescope find_files<cr>]], { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'gl', [[<c-^>]], { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'go', [[:]], { noremap = true })

-- " navigate buffers
vim.api.nvim_set_keymap('n', '<leader>n', ':bnext<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>b', ':bprevious<cr>', opts)
--
--

-- window navigation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", opts)
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", opts)
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", opts)
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", opts)
--
-- vnoremap < <gv
-- vnoremap > >gv
-- map gf :edit <cfile><cr>
-- map <c-s> :w<CR>
--
--
-- " inoremap ( ()<Esc>i
-- " inoremap [ []<Esc>i
-- " inoremap { {}<Esc>i
--
-- " Open the current file in the default program
-- nmap <leader>x :!xdg-open %<cr><cr>
--
--

-- nvim-tree
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

