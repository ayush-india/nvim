return {
  ["folke/which-key.nvim"] = {
    disable = false,
    module = "which-key",
    keys = { "<leader>", '"', "'", "`" },
    config = function()
      require "plugins.configs.whichkey"
    end,
    setup = function()
      require("core.utils").load_mappings "whichkey"
    end,
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["ThePrimeagen/harpoon"] = {
    setup = function()
      require("core.lazy_load").on_file_open "harpoon"
    end,
  },

  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = { "rust-analyzer" },
    },
  },
  ["sbdchd/neoformat"] = {
    setup = function()
      require("core.lazy_load").on_file_open "neoformat"
    end,
  },
  ["folke/trouble.nvim"] = {
    setup = function()
      require("core.lazy_load").on_file_open "trouble.nvim"
    end,
  },
}
