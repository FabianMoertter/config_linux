-- use Leader-q to delete buffers
vim.api.nvim_set_keymap('n', '<leader>q', ':Bdelete<cr>', { noremap = true, silent = true })
