return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    local actions = require "telescope.actions"

    -- Ensure `opts.defaults` exists
    opts.defaults = opts.defaults or {}

    -- Add file ignore patterns
    opts.defaults.file_ignore_patterns = {
      "node_modules",
    }

    -- Add or override key mappings
    opts.defaults.mappings = {
      i = {
        ["<CR>"] = actions.select_default, -- Enter selects current entry in insert mode
        ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist, -- optional
      },
      n = {
        ["<CR>"] = actions.select_default, -- Enter in normal mode
      },
    }

    return opts
  end,
}
