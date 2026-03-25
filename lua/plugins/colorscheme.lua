return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "night",

      transparent = true,
      terminal_colors = true,

      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        --sidebars = "transparent",
        floats = "transparent",
      },

      -- Better visibility for diagnostics
      on_highlights = function(hl, c)
        hl.CursorLine = { bg = c.bg_highlight }

        -- diagnostics colors
        hl.DiagnosticVirtualTextError = {
          bg = "NONE",
          fg = c.error,
        }

        hl.DiagnosticVirtualTextWarn = {
          bg = "NONE",
          fg = c.warning,
        }

        hl.DiagnosticVirtualTextInfo = {
          bg = "NONE",
          fg = c.info,
        }

        hl.DiagnosticVirtualTextHint = {
          bg = "NONE",
          fg = c.hint,
        }

        -- remove background from common UI groups
        local transparent_groups = {
          "Normal",
          "NormalNC",
          "SignColumn",
          "EndOfBuffer",
          "StatusLine",
          "StatusLineNC",
          "WinSeparator",
        }

        for _, group in ipairs(transparent_groups) do
          hl[group] = { bg = "NONE" }
        end
      end,
    })

    -- apply colorscheme
    vim.cmd.colorscheme("tokyonight")
  end,
}
