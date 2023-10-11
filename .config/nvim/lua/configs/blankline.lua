local status, blankline = pcall(require, "indent-blankline")

if not status then
    return
end

blankline.setup({
    show_end_of_line = true,
    space_char_blankline = " ",
})

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"
vim.opt.listchars:append "tab:»"

