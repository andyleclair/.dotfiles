-- expert
vim.lsp.config('expert', {
  cmd = { 'expert' },
  root_markers = { 'mix.exs', '.git' },
  filetypes = { 'elixir', 'eelixir', 'heex' },
})

vim.lsp.enable 'expert'

return {}
