local status, treesitter = pcall(require, "nvim-treesitter")

if not status then
    return
end

treesitter.setup({
    ensure_installed = {
      "c",
      "cpp",
      "rust",
      "bash",
      "go",
      "lua",
      "vim",
      "python",
      "cmake",
      "make",
      "json",
      "yaml",
      "dockerfile",
      "git_config",
      "gitignore",
      "gitcommit",
      "gomod",
      "markdown",
      "markdown_inline",
      "toml",
      "xml",
      "vala",
    },
    sync_install = false,
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    }
})
