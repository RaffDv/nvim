return {
  -- 1. Garante que o Biome esteja instalado pelo Mason
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "biome" })
    end,
  },

  -- 2. Configura o LSP do Biome
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Configura o Biome LSP
        biome = {
          -- O lspconfig irá procurar o biome.json automaticamente
        },
      },
    },
  },

  -- 3. Configura o Conform para usar o Biome como formatador
  {
    "stevearc/conform.nvim",
    dependencies = { "mason.nvim" },
    opts = {
      formatters_by_ft = {
        ["javascript"] = { "biome" },
        ["javascriptreact"] = { "biome" },
        ["typescript"] = { "biome" },
        ["typescriptreact"] = { "biome" },
        ["json"] = { "biome" },
        ["jsonc"] = { "biome" },
      },
      formatters = {
        biome = {
          command = "biome",
          args = { "format", "--stdin-file-path", "$FILENAME" },
          stdin = true,
        },
      },
    },
  },
}
