local M = {}

M.ui = {
  theme = "gruvchad",
  transparency = true,
  theme_toggle = { "gruvchad", "gruvbox_light" },
}

M.plugins = require "custom.plugins"
M.mappings = require "custom.mappings"

return M
