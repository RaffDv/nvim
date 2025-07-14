return {
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim", -- Opcional
      "sindrets/diffview.nvim", -- Opcional
    },
    config = true,
    keys = {
      {
        "<leader>gg",
        function()
          require("neogit").open()
        end,
        desc = "Neogit",
      },
    },
  },

  { "tpope/vim-fugitive" },

  {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>gb",
        function()
          require("gitsigns").blame_line({ full = true })
        end,
        desc = "Git Blame Line",
      },
      {
        "<leader>gS",
        ":Gitsigns stage_buffer<CR>",
        desc = "Git Stage Buffer",
      },
    },
    opts = {
      current_line_blame = true,
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol",
        delay = 500,
        ignore_whitespace = false,
      },
      current_line_blame_formatter = " <author>, <author_time:%d/%m/%y> - <summary>",
    },
  },
  {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = {
      "DiffviewOpen",
      "DiffviewClose",
      "DiffviewToggleFiles",
      "DiffviewFocusFiles",
      "DiffviewFileHistory",
    },
    keys = {
      { "<leader>gv", "<cmd>DiffviewOpen<CR>", desc = "Diff View Open" },

      { "<leader>gV", "<cmd>DiffviewOpen main<CR>", desc = "Diff View vs main" },

      { "<leader>gD", "<cmd>DiffviewClose<CR>", desc = "Diff View Close" },

      {
        "<leader>gh",
        "<cmd>DiffviewFileHistory %<CR>",
        desc = "Git File History",
      },
    },
    opts = {
      view = {
        default = {
          layout = "split",
        },
        merge_tool = {
          layout = "diff3_split",
        },
      },
    },
  },
}
