local apiv = vim.api
local fnv = vim.fn

-- Fix canceallevel for json files
apiv.nvim_create_autocmd("FileType", {
    pattern = { "json", "jsonc", "yaml", "yml", "Dockerfile" },
    callback = function()
        local wov = vim.wo
        wov.spell = false
        wov.conceallevel = 0
    end
})

apiv.nvim_create_user_command("CopyAbsolutePath", function()
    local path = vim.fn.expand("%:p")

    fnv.setreg("+", path)
    vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})

apiv.nvim_create_user_command("CopyRelPath", function()
    apiv.nvim_call_function("setreg", { "+", fnv.fnamemodify(fnv.expand("%"), ":.") })
end, {})
