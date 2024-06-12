local logo = [[
 ▄████████  ▄██████▄  ████████▄     ▄████████  ▄████████ ███    █▄   ▄█           ███     
███    ███ ███    ███ ███   ▀███   ███    ███ ███    ███ ███    ███ ███       ▀█████████▄ 
███    █▀  ███    ███ ███    ███   ███    █▀  ███    █▀  ███    ███ ███          ▀███▀▀██ 
███        ███    ███ ███    ███  ▄███▄▄▄     ███        ███    ███ ███           ███   ▀ 
███        ███    ███ ███    ███ ▀▀███▀▀▀     ███        ███    ███ ███           ███     
███    █▄  ███    ███ ███    ███   ███    █▄  ███    █▄  ███    ███ ███           ███     
███    ███ ███    ███ ███   ▄███   ███    ███ ███    ███ ███    ███ ███▌    ▄     ███     
████████▀   ▀██████▀  ████████▀    ██████████ ████████▀  ████████▀  █████▄▄██    ▄████▀   
                                                                    ▀
]]

logo = string.rep('\n', 1) .. logo .. '\n\n'

return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      config = {

        header = vim.split(logo, '\n'),
        mru = { label = 'Previously Makin bred.' },
        footer = {},
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
