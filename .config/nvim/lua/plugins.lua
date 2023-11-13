vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup("PACKER", { clear = true }),
    pattern = "plugins.lua",
    command = "source <afile> | PackerCompile",
})

return require("packer").startup(function(use)
    -- Packer
    use("wbthomason/packer.nvim")

    -- Icons
    use("nvim-tree/nvim-web-devicons")

    -- File manager
    use({
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require("configs.neotree")
        end,
    })

    -- Telescope
    -- use({
    --     "nvim-telescope/telescope.nvim",
    --     tag = "0.1.1",
    --     requires = { { "nvim-lua/plenary.nvim" } },
    -- })

    -- Git
    use({
        "lewis6991/gitsigns.nvim",
        config = function()
            require("configs.gitsigns")
        end,
    })

    -- Lualine
    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    })

    -- Bufferline
    use({
        'akinsho/bufferline.nvim',
        tag = "*",
        requires = 'nvim-tree/nvim-web-devicons'
    })

    -- Autocomplete
    use({
        "hrsh7th/nvim-cmp",
        config = function()
            require("configs.cmp")
        end
    })
    use({"hrsh7th/cmp-buffer"})
    use({"hrsh7th/cmp-nvim-lsp"})

    -- ALE: search for definitions
    use({
        "dense-analysis/ale"
    })

    -- use({
    --     "vala-lang/vala.vim"
    -- })

    use({
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("configs.blankline")
        end
    })

    -- fuzzy file open
    use({
        "cloudhead/neovim-fuzzy" 
    })

    -- Treesitter
    -- use({
    --    "nvim-treesitter/nvim-treesitter",
    --    tag = "*",
    --    config = function()
    --        require("configs.treesitter")
    --    end
    -- })
    
    -- Theme
    use({
        "folke/tokyonight.nvim",
        config = function()
            require("configs.tokyonight")
        end
    })

    -- Markdown preview
    use({
        'toppair/peek.nvim',
        run = 'deno task --quiet build:fast',
        config = function()
            require("configs.peek")
            vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
            vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
        end
    })
end)
