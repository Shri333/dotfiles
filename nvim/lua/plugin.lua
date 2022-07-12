require('impatient')
return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  
  -- improve startup time
  use {
    'lewis6991/impatient.nvim',
    'nathom/filetype.nvim'
  }

  -- colorscheme + statusline
  use {
    'folke/tokyonight.nvim',
    {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
  }

  -- fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    keys = { 'ff', 'fg', 'fb', 'fr', 'fd', 'fs' },
    requires = {
      'nvim-lua/plenary.nvim',
      -- adapted from "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && '
           .. 'cmake --build build --config Release && '
           .. 'cmake --install build --prefix build'
      },
      { 'kyazdani42/nvim-web-devicons', opt = true }
    },
    config = [[require('config.telescope')]]
  }

  -- auto close brackets, parentheses, braces, and quotes
  use { 'cohama/lexima.vim', event = 'InsertEnter' }

  -- language server + parser
  use {
    'neovim/nvim-lspconfig',
    { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  }

  -- autocomplete
  use {
    'ms-jpq/coq_nvim',
    branch = 'coq'
  }

  -- debugging
  use {
    'mfussenegger/nvim-dap',
    requires = 'nvim-lua/plenary.nvim',
    module = 'dap'
  }

  -- rust
  use {
    'simrat39/rust-tools.nvim',
    ft = 'rust',
    config = [[require('config.rust-tools')]]
  }
end)
