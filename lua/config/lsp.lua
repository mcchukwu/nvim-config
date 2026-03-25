require("lsp.servers")
require("lsp.diagnostics")

-- Make keymaps buffer-local only when LSP attaches
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    local bufnr = args.buf
    if client and bufnr then
      require("lsp.common").on_attach(client, bufnr)
    end
  end,
})
