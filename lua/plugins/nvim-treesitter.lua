return {
    "nvim-treesitter/nvim-treesitter",
    version = false, -- last release is way too old and doesn't work on Windows

    build = ":TSUpdate",
    event = { "LazyFile", "VeryLazy" },

    init = function(plugin)
        -- PERF: add nvim-treesitter queries to the rtp and it's custom query predicates early
        -- This is needed because a bunch of plugins no longer `require("nvim-treesitter")`, which
        -- no longer trigger the **nvim-treesitter** module to be loaded in time.
        -- Luckily, the only things that those plugins need are the custom queries, which we make available
        -- during startup.
        require("lazy.core.loader").add_to_rtp(plugin)
        require("nvim-treesitter.query_predicates")
    end,

    ---@type TSConfig
    ---@diagnostic disable-next-line: missing-fields
    opts = {
        highlight = {enable = true}, indent = {enable = true},
        ensure_installed = {
            -- Low langs
            "c3",
            "c",

            -- LH level
            'odin',
            -- 'nim',
            'v',

            -- High level
            "lua",
            "python",
            "luadoc",
            "luap",

            -- Format Files
            "json",
            "markdown",
            "markdown_inline",

            "toml",
            "vim",
            "vimdoc",
            "wgsl"
        }
    },

    ---@param opts TSConfig
    config = function(_, opts)
        if type(opts.ensure_installed) == "table" then
            opts.ensure_installed = LazyVim.dedup(opts.ensure_installed)
        end

        require("nvim-treesitter.configs").setup(opts)
        local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
        parser_config.c3 = {
            install_info = {
                url = "https://github.com/c3lang/tree-sitter-c3",
                files = {"src/parser.c", "src/scanner.c"},

                branch = "main"
            }
        }
  end
}
