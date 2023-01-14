local M = {}

M.disabled = {
  n = {
    ["<leader>h"] = "",
    ["<leader>v"] = "",
    ["A-v"] = "",
    ["A-h"] = "",
    ["<leader>fm"] = "",
  },
  t = {
    ["A-h"] = "",
    ["A-v"] = "",
  },
}
M.general = {
  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
  n = {
    -- Nav
    ["<C-d>"] = {"<C-d>zz"},
    ["<C-u>"] = {"<C-u>zz"},
    -- Tab switching
    ["<S-l>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "goto next buffer",
    },
    ["<S-h>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "goto prev buffer",
    },
    -- Formatting
    ["<leader>fm"] = { "<cmd>:Neoformat<CR>", "format the current file" },
    -- Harpoon :)
    ["<leader>a"] = {
      function()
        require("harpoon.mark").add_file()
      end,
      "Har add",
    },
    ["<leader>h"] = {
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      "Har menu",
    },
    ["<C-h>"] = {
      function()
        require("harpoon.ui").nav_file(1)
      end,
      "Nav har 1",
    },
    ["<C-j>"] = {
      function()
        require("harpoon.ui").nav_file(2)
      end,
      "Nav har 2",
    },
    ["<C-k>"] = {
      function()
        r1quire("harpoon.ui").nav_file(3)
      end,
      "Nav har 3",
    },
    ["<C-l>"] = {
      function()
        require("harpoon.ui").nav_file(4)
      end,
      "Nav har 4",
    },
  },
}

return M
