-- adapted from "https://sharksforarms.dev/posts/neovim-rust/"
require('rust-tools').setup({
  tools = {
    inlay_hints = {
      show_parameter_hints = false,
      parameter_hints_prefix = '',
      other_hints_prefix = ''
    }
  },
  server = {
    on_attach = require('config.on-attach'),
    settings = require('coq').lsp_ensure_capabilities({
      ['rust-analyzer'] = {
        checkOnSave = {
          command = 'clippy'
        }
      }
    })
  }
})
