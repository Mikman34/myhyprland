-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.api.nvim_set_keymap('i', '<C-a>', '<Esc>ggVG', { noremap = true, silent = true })

