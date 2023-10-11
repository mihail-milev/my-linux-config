local status, tokyonight = pcall(require, "tokyonight")

if not status then
    return
end

tokyonight.setup({
    style = "storm",
    styles = {
        comments = { italic = true },
        keywirds = { italic = true },
    },
})
