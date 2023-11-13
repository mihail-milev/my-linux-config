local status, blankline = pcall(require, "ibl")

if not status then
    error("unable to find blankline")
    return
end

blankline.setup({})

