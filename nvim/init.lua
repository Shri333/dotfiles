-- config adapted from https://github.com/craftzdog/dotfiles-public/blob/master/.config/nvim/init.vim
-- huge thanks to "https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/"!
local opt = vim.opt

opt.number = true
opt.scrolloff = 10
opt.wrap = false
opt.signcolumn = 'yes'

opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.path = '**'
opt.smartindent = true

opt.title = true
opt.inccommand = 'split'
opt.lazyredraw = true
opt.wildignore = '*/node_modules/*'
opt.completeopt = {'menuone', 'noinsert', 'noselect'}
opt.updatetime = 1000

vim.cmd('set shortmess+=c')
vim.api.nvim_set_hl(0, 'LineNr', { ctermfg = 240 })

-- adapted from "https://alpha2phi.medium.com/neovim-for-beginners-performance-95687714c236"
local disabled_plugins = {
  'gzip',
  'man',
  'matchit',
  'netrwPlugin',
  'shada_plugin',
  'spellfile_plugin',
  'tarPlugin',
  '2html_plugin',
  'zipPlugin'
}

for _, plugin in pairs(disabled_plugins) do
  vim.g['loaded_' .. plugin] = 1
end

require('keymap')
require('plugin')
