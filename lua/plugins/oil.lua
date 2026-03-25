return {
  'stevearc/oil.nvim',
  opts = {},
  keys = {
    { "-", "<cmd>Oil<CR>", mode = "n" },
    { "-", "<cmd>Oil<CR>", mode = "v" },
  },
  --dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
}
