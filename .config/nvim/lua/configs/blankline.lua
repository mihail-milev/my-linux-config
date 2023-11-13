local status, blankline = pcall(require, "ibl")

if not status then
    error("unable to find blankline")
    return
end

blankline.setup({})

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"
vim.opt.listchars:append "tab:»"

