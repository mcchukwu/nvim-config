local common = require("lsp.common")

-- Default options for all servers
local default_opts = {
  capabilities = common.capabilities,
  on_attach = common.on_attach,
}

-- Helper to setup servers via vim.lsp.config
local function setup(server_name, opts)
  opts = vim.tbl_deep_extend("force", default_opts, opts or {})

  -- Add server to vim.lsp.config
  vim.lsp.config[server_name] = vim.tbl_extend("force",
    vim.lsp.config[server_name] or {},
    opts
  )

  -- Start server if Neovim is already open in a project
  if vim.lsp.get_active_clients({ name = server_name })[1] == nil then
    vim.lsp.start_client(vim.lsp.config[server_name])
  end
end

-- Lua
setup("lua_ls", {
  settings = {
    Lua = {
      workspace = { checkThirdParty = false },
      diagnostics = { globals = { "vim", "require" } },
      telemetry = { enable = false },
    },
  },
})

-- TypeScript
setup("ts_ls", { single_file_support = false })

-- Python
setup("pyright")

-- Go
setup("gopls")
