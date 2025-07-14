return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "emmet-ls" })
      end
    end,
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        emmet_ls = {
          filetypes = {
            "css",
            "html",
            "javascriptreact",
            "typescriptreact",
            "svelte",
            "vue",
          },
        },
      },
    },
  },

}
