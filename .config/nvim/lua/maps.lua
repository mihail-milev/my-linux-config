local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { silent = true })
end

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree toggle<CR>")
map("n", "<leader>o", "<CMD>Neotree focus<CR>")

-- switch buffers with Ctrl+b
map("n", "<C-b>", "<C-w>")

-- Ctrl+w will change cwd to the files directory
map("n", "<C-w>", "<CMD>cd %:p:h<CR>")

-- Left mouse click will search for definitions
map("n", "<C-LeftMouse>", "<CMD>ALEGoToDefinition<CR>")

-- Ctrl+p will load fuzzy file loading
map("n", "<C-p>", "<CMD>FuzzyOpen<CR>")

-- Fast buffer open
map("n", "<leader>b", ":buffers<CR>:b<Space>")

-- Fast reload of configs
map("n", "<leader>r", "<CMD>luafile %<CR>")

-- Open terminal
map("n", "<leader>t", "<CMD>belowright split +term<CR><CMD>startinsert<CR>")

-- Open MD preview
map("n", "<leader>m", "<CMD>PeekOpen<CR>")

-- Try copy&paste with Konsole shortcuts
map("n", "<C-S-V>", '"+gP')
map("i", "<C-S-V>", '<Esc>"+gP<CMD>startinsert<CR>')
map("v", "<C-S-C>", '"+y')
map("v", "<C-S-X>", '"+d')

