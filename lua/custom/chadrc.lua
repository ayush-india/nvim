local M = {}

M.ui = {
  theme = "tokyodark",
  transparency = true,
  theme_toggle = { "tokyodark", "tokyodark" },

  -- cmp themeing
  cmp = {
    icons = false,
    lspkind_text = false,
    style = "flat_dark", -- default/flat_light/flat_dark/atom/atom_colored
    border_color = "grey_fg", -- only applicable for "default" style, use color names from base30 variables
    selected_item_bg = "simple", -- colored / simple
  },

  ------------------------------- nvchad_ui modules -----------------------------
  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "block",
    overriden_modules = nil,
  },
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
