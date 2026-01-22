return {
  -- add kanagawa
  { "rebelot/kanagawa.nvim" },

  --add oxocarbon
  {
    "nyoom-engineering/oxocarbon.nvim",
  },

  -- add moonfly
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },

  -- add ice-cave
  {
    "mcauley-penney/ice-cave.nvim",
    priority = 1000,
  },

  --add iceberg
  { "cocopon/iceberg.vim" },

  --add metal-black
  --
  { "metalelf0/base16-black-metal-scheme" },

  -- add vesper
  { "datsfilipe/vesper.nvim" },

  -- add zenbones
  {
    "zenbones-theme/zenbones.nvim",
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
  },

  -- add vimdark
  { "ldelossa/vimdark" },

  -- add rosepine
  {
    "rose-pine/neovim",
    name = "rose-pine",
  },

  -- add github theme

  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("github-theme").setup({
        options = {
          styles = {
            comments = "italic",
            keywords = "bold",
            types = "italic,bold",
          },
        },
      })
    end,
  },
}
