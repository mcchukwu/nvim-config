return {
  'stevearc/oil.nvim',
  opts = {
    default_file_explorer = true,

    view_options = {
      show_hidden = true,
    },

    win_options = {
      signcolumn = "yes:2",
    },
  },
  keys = {
    { "-", "<cmd>Oil<CR>", mode = "n" },
    { "-", "<cmd>Oil<CR>", mode = "v" },
  },
  --dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
}
