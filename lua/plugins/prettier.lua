return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = {
        ["css"] = { "prettier" },
        ["html"] = { "prettier" },
        ["json"] = { "prettier" },
        ["yaml"] = { "prettier" },
        ["markdown"] = { "prettier" },
        ["lua"] = { "stylua" },
      }
    end,
  },
}
