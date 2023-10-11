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

-- Autocmd to load git branch name
-- vim.api.nvim_create_autocmd("BufEnter", {command = "set statusline+=%{system(\"git branch 2>&1 | awk 'NF==2 {print $2}'\")}"})
-- set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
-- set statusline=%{system('echo\ -n\ $\(pwd\ -L\)')}
