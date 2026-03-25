return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "lua_ls",
    }
  },
  dependencies = {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        border = "rounded",   -- "single", "double", "rounded", "solid"
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    },
  },
}
