return {
    "folke/twilight.nvim",
    opts = {
        dimming = {
            alpha = 0.15,
            color = { "Normal", "#ffffff" },
            term_bg = "#000000",
            inactive = false,
        },
        context = 16,
        treesitter = true,

        expand = {
            "function",
            "method",
            "table",
            "if_statement",
            "function_declaration",
            "method_declaration",
        },

        exclude = {}
    }
}
