local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system{ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath }
end

if vim.loader then
	vim.loader.enable()
end

vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

vim.filetype.add({extension = {wgsl = "wgsl"}})

vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldlevelstart = 99 -- do not close folds when a buffer is opened

require("lazy").setup{
    spec = {  -- add LazyVim and import its plugins
        { "LazyVim/LazyVim", import = "lazyvim.plugins" },
        -- import any extras modules here
        { import = "lazyvim.plugins.extras.lsp.none-ls" },

        { import = "lazyvim.plugins.extras.linting.eslint" },
        { import = "lazyvim.plugins.extras.ui.mini-animate" },

        --{ import = "lazyvim.plugins.extras.lang.json" },
        { import = "lazyvim.plugins.extras.lang.rust" },

        { import = "lazyvim.plugins.extras.coding.luasnip" },

        -- import/override with your plugins
        { import = "plugins" }
    },

    defaults = {
        lazy = false,
        version = false
    },

    install = { colorscheme = { "tokyonight", "habamax" } },
    checker = { enabled = true, notify = false }, -- automatically check for plugin updates
    performance = {
        rtp = {
            -- disable some rtp plugins
            disabled_plugins = {
                "gzip",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin"
            }
        }
    }
}
