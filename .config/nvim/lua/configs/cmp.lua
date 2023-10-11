local status, cmp = pcall(require, "cmp")

if not status then
    return
end

cmp.setup({
    sources = {
        { name = 'buffer' },
        { name = 'nvim_lsp' },
    },
    mapping = {
        ['<UP>'] = cmp.mapping.select_prev_item(select_opts),
        ['<DOWN>'] = cmp.mapping.select_next_item(select_opts),
        ['<CR>'] = cmp.mapping.confirm({select = false}),
        ['<Esc>'] = cmp.mapping.abort(),
    },
})
