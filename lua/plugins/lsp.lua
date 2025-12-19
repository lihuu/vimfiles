return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "gopls",
        "json-lsp",
        "prettier",
        "eslint-lsp",
        "lua-language-server",
        "typescript-language-server",
        "vue-language-server",
        "pyright",
        "goimports",
        "gofumpt",
        "tailwindcss-language-server",
        "markdown-toc",
        "markdownlint",
        "markdownlint-cli2",
        "marksman",
        "docker-compose-language-service",
        "yaml-language-server",
        "ruff",
        "ruff-lsp",
        "vim-language-server",
      },
    },
  },
  {
    "wojciech-kulik/xcodebuild.nvim",
    dependencies = {
      -- Uncomment a picker that you want to use, snacks.nvim might be additionally
      -- useful to show previews and failing snapshots.

      -- You must select at least one:
      -- "nvim-telescope/telescope.nvim",
      -- "ibhagwan/fzf-lua",
      "folke/snacks.nvim", -- (optional) to show previews
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-tree.lua", -- (optional) to manage project files
      "stevearc/oil.nvim", -- (optional) to manage project files
      "nvim-treesitter/nvim-treesitter", -- (optional) for Quick tests support (required Swift parser)
    },
    config = function()
      require("xcodebuild").setup({
        -- put some options here or leave it empty to use default settings
      })
    end,
  },
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        sh = { "shfmt" },
        python = { "ruff", "flake8" },
        go = { "gofumpt", "goimports" },
        json = { "prettier" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        vue = { "prettier" },
        markdown = { "prettier" },
        yaml = { "prettier" },
        dockerfile = { "prettier" },
        vim = { "vim-beautify" },
        swift = { "swiftformat" },
      },
    },
  },
}
