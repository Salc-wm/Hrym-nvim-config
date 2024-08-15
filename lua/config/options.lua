local opt = vim.opt
local global = vim.g

global.autoformat = false

opt.clipboard = "unnamedplus"

opt.conceallevel = 0
opt.shiftwidth = 4
opt.tabstop = 4

opt.smartindent = true
opt.wrap        = false

vim.filetype.add({
    extension = {
        c3 = "c3",
        c3i = "c3",
        c3t = "c3",
    }
})
