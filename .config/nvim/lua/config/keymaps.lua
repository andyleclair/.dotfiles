-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local wk = require("which-key")
local noice = require("noice")
wk.register({
  e = {
    name = "edit", -- optional group name
    d = {
      function()
        local new_filename = vim.fn.input({ prompt = "Enter new file name" })
        local command = "<cmd>:e %:p:h" .. "/" .. new_filename .. "<cr>"
        noice.notify("New filename: " .. new_filename, "info", {})
        noice.notify("New dir: " .. command, "info", {})
        return "<cmd>:e %:p:h" .. "/" .. new_filename .. "<cr>"
      end,
      "Edit in current directory",
    },
    e = {
      "<cmd>Neotree toggle<cr>",
      "Toggle Neotree",
    },
  },
}, { prefix = "<leader>" })
