local M = {}

M.ui = {
  theme = "tokyodark",
  transparency = false,
  theme_toggle = { "tokyodark", "everforest" },
}

M.plugins = require "custom.plugins"
M.mappings = require "custom.mappings"

return M
