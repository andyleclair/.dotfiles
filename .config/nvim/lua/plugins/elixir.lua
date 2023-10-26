-- Elixir configs for LSP, etc.
return {
  {
    "tpope/vim-projectionist",
    config = function()
      vim.g.projectionist_heuristics = {
        ["*"] = {
          ["lib/*.ex"] = {
            type = "src",
            alternate = "test/{}_test.exs",
          },
          ["test/*_test.exs"] = {
            alternate = "lib/{}.ex",
          },
          ["*_live/*.ex"] = {
            type = "liveview",
            alternate = "{}.html.heex",
          },
          ["*.html.heex"] = {
            type = "template",
            alternate = "{}.ex",
          },
          ["controllers/*_controller.ex"] = {
            type = "controller",
            alternate = "{dot|dot}/views/{}_view.ex",
          },
        },
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      diagnostics = {
        virtual_text = {
          prefix = "icons",
        },
      },
      -- servers = {
      --   elixirls = {
      --     mixEnv = "dev",
      --   },
      -- },
    },
    config = function()
      local lspconfig = require("lspconfig")
      local configs = require("lspconfig.configs")

      local lexical_config = {
        filetypes = { "elixir", "eelixir" },
        cmd = { "/home/borpht/lexical/_build/dev/package/lexical/bin/start_lexical.sh" },
        settings = {},
      }

      if not configs.lexical then
        configs.lexical = {
          default_config = {
            filetypes = lexical_config.filetypes,
            cmd = lexical_config.cmd,
            root_dir = function(fname)
              return lspconfig.util.root_pattern("mix.exs", ".git")(fname) or vim.loop.os_homedir()
            end,
            -- optional settings
            settings = lexical_config.settings,
          },
        }
      end

      lspconfig.lexical.setup({})
    end,
  },
}
