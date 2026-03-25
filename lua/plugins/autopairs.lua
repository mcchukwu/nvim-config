return {
  "windwp/nvim-autopairs",
  opts = {
    check_ts = true,
    enable_check_bracket_line = true,
    ignored_next_char = "[%w%.]", -- ignore letters/numbers
  },
  event = "InsertEnter",
}
