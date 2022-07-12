local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files)
vim.keymap.set('n', 'fg', builtin.git_files)
vim.keymap.set('n', 'fb', builtin.buffers)
vim.keymap.set('n', 'fr', builtin.lsp_references)
vim.keymap.set('n', 'fd', builtin.diagnostics)
vim.keymap.set('n', 'fs', builtin.git_status)

require('telescope').load_extension('fzf')
