return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "rust",
      "toml",
      "go",
      "json",
      "python",
      "gitignore",
      "graphql",
      "java",
      "scala",
      "sql",
      "hcl",
      "terraform",
    },
    auto_install = true,
    highlight = {
      enabled = true,
      additional_vim_regex_highlighting = false,
    },
    ident = { enabled = true },
    rainbow = {
      enabled = true,
      extended_mode = true,
      max_file_lines = nil,
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
