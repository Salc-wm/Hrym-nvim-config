return {
    "williamboman/mason.nvim",
    cmd = "Mason",
    keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
    build = ":MasonUpdate",
    opts = {
        ensure_installed = {
            'cpplint',
            "stylua",
            'clangd',
            "shfmt",
            "ruff",
            'ols',
            'zls',

            'rust-analyzer',
            "wgsl-analyzer",

            'taplo',
            'markdownlint',
            'asm-lsp'
        },
    }
}
