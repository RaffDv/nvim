return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "typescript-language-server" })
    end,
  },

  -- Configura o servidor de linguagem para TypeScript
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Garante que o tsserver seja configurado
        tsserver = {
          -- Desabilita o formatador nativo do TypeScript,
          -- pois usaremos o Biome para isso.
          settings = {
            typescript = {
              format = {
                enable = false,
              },
            },
            javascript = {
              format = {
                enable = false,
              },
            },
          },
        },
      },
    },
  },
}
