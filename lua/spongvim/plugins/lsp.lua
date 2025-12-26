return {
  {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    config = true,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    event = "VeryLazy",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          -- Core
          "clangd",
          "pyright",
          "lua_ls",

          -- Web
          "ts_ls",
          "html",
          "cssls",
          "jsonls",

          -- Scripting
          "bashls",

          -- Systems
          "rust_analyzer",
          "gopls",

          -- Config / Docs
          "yamlls",
          "marksman",
        },
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local capabilities =
        require("cmp_nvim_lsp").default_capabilities()

      -- C / C++
      vim.lsp.config("clangd", {
        capabilities = capabilities,
      })

      -- Python
      vim.lsp.config("pyright", {
        capabilities = capabilities,
      })

      -- Lua (Neovim)
      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              checkThirdParty = false,
            },
          },
        },
      })

      -- JavaScript / TypeScript
      vim.lsp.config("ts_ls", {
        capabilities = capabilities,
      })

      -- HTML / CSS / JSON
      vim.lsp.config("html", { capabilities = capabilities })
      vim.lsp.config("cssls", { capabilities = capabilities })
      vim.lsp.config("jsonls", { capabilities = capabilities })

      -- Bash
      vim.lsp.config("bashls", { capabilities = capabilities })

      -- Rust
      vim.lsp.config("rust_analyzer", {
        capabilities = capabilities,
      })

      -- Go
      vim.lsp.config("gopls", {
        capabilities = capabilities,
      })

      -- YAML
      vim.lsp.config("yamlls", {
        capabilities = capabilities,
      })

      -- Markdown
      vim.lsp.config("marksman", {
        capabilities = capabilities,
      })

      -- Enable all LSPs
      vim.lsp.enable({
        "clangd",
        "pyright",
        "lua_ls",
        "ts_ls",
        "html",
        "cssls",
        "jsonls",
        "bashls",
        "rust_analyzer",
        "gopls",
        "yamlls",
        "marksman",
      })
    end,
  },
}

