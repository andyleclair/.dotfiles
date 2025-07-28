-- lexical
local lspconfig = require('lspconfig')

lspconfig.lexical.setup {
  cmd = { "/home/borpht/lexical/_build/dev/package/lexical/bin/start_lexical.sh" },
  root_dir = function(fname)
    return lspconfig.util.root_pattern("mix.exs", ".git")(fname) or vim.loop.cwd()
  end,
  filetypes = { "elixir", "eelixir", "heex" },
  -- optional settings
  settings = {}
}
return {}
-- return {
--   {
--     "elixir-tools/elixir-tools.nvim",
--     version = "*",
--     event = { "BufReadPre", "BufNewFile" },
--     config = function()
--       local elixir = require("elixir")
--       local elixirls = require("elixir.elixirls")
--
--       elixir.setup {
--         nextls = { enable = false },
--         elixirls = {
--           enable = true,
--           cmd = "/home/borpht/elixir-ls/_build/language_server.sh",
--           settings = elixirls.settings {
--             dialyzerEnabled = true,
--             enableTestLenses = false,
--             mixEnv = 'dev'
--           },
--           on_attach = function(client, bufnr)
--             vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>",
--               { buffer = true, noremap = true })
--             vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>",
--               { buffer = true, noremap = true })
--             vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>",
--               { buffer = true, noremap = true })
--           end,
--         },
--         projectionist = {
--           enable = true
--         }
--       }
--     end,
--     dependencies = {
--       "nvim-lua/plenary.nvim",
--     },
--   }
-- }
-- -- vim: ts=2 sts=2 sw=2 et
