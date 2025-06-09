return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = false,
          hide_dotfiles = true,
          hide_gitignored = true,
          always_show = {
            ".env",
          },
        },
        follow_current_file = {
          enabled = true,
          leave_dirs_open = true, -- Manter pastas abertas
        },
      },
    },
  },
}
