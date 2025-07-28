return {
  'MagicDuck/grug-far.nvim',
  -- Note (lazy loading): grug-far.lua defers all it's requires so it's lazy by default
  -- additional lazy config to defer loading is not really needed...
  config = function()
    local gf = require('grug-far')
    -- optional setup call to override plugin options
    -- alternatively you can set options with vim.g.grug_far = { ... }
    vim.keymap.set('n', '<leader>sr', gf.open, { desc = '[S]earch and [R]eplace' })
  end
}
