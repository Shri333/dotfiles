-- adapted from "https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/"
vim.keymap.set('n', '<F1>', ':bp<CR>')
vim.keymap.set('n', '<F2>', ':bn<CR>')

-- adapted from "https://www.reddit.com/r/neovim/comments/s4jt9n/comment/hthdeqz/?utm_source=share&utm_medium=web2x&context=3"
vim.keymap.set('n', 'q', ':bp<bar>bd!#<CR>')
