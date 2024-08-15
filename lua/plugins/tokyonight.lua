return {
    "folke/tokyonight.nvim",
    lazy = true,

    opts = {
        style = "night",
        on_colors = function(colors)
            colors.hint = colors.orange
            colors.error = "#ff0000"

            colors.bg = "#060606"
            colors.bg_dark = "#16161e"
            colors.bg_float = "#16161e"
            colors.bg_highlight = "#280b32"

            colors.bg_popup = "#030403"
            colors.bg_sidebar = "#131211"
            colors.bg_statusline = "#16160e"

            colors.bg_search = "#6d59a1"
            colors.bg_visual = "#383457"
            colors.bg_highlight = "#392e42"

            colors.border = "#131211"

            colors.fg = "#308080"
            colors.fg_dark = "#a693d7"
            colors.fg_float = "#c06af5"
            colors.fg_gutter = "#3b4261"
            colors.fg_sidebar = "#b161d6"

            -- blue = "#7aa2f7"
            -- blue0 = "#3d59a1"
            -- blue1 = "#2ac3de"
            -- blue2 = "#0db9d7"
            -- blue5 = "#89ddff"
            -- blue6 = "#b4f9f8"
            colors.blue7 = "#490b40"

            colors.terminal_black = "#1c1c1c"
            colors.todo = "#ffc607"
        end
    }
}
