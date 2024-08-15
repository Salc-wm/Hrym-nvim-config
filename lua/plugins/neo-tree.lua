return {
    "nvim-neo-tree/neo-tree.nvim",
    optional = true,
    opts = function(_, opts)
        opts.open_files_do_not_replace_types = opts.open_files_do_not_replace_types
            or { "terminal", "Trouble", "qf", "Outline", "trouble" }
        table.insert(opts.open_files_do_not_replace_types, "edgy")

        opts.popup_border_style = "rounded"
        opts.default_component_configs = {
            indent = {
                indent_marker = "║",
                last_indent_marker = "╚"
            }
        }

        opts.window = {
            position = 'right',
            width = 28,
            mapping_options = {
                noremap = true,
                nowait = true
            }
        }
    end
}
