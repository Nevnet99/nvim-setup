return {
  'gorbit99/codewindow.nvim',
  init = function()
    local codewindow = require 'codewindow'
    codewindow.setup()
    codewindow.apply_default_keybinds()
  end,
}
