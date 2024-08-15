return {
    "AckslD/swenv.nvim",
    opts = {
        get_venvs = function(venvs_path)
            return require("swenv.api").get_venvs(venvs_path)
        end,

        venvs_path = vim.fn.expand("~/venvs"),
        post_set_venv = nil
    }
}
