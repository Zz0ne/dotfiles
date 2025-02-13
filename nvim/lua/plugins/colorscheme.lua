return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  { "xiantang/darcula-dark.nvim" },
  { "AlexvZyl/nordic.nvim" },
  { "sainnhe/gruvbox-material" },
  { "rebelot/kanagawa.nvim" },
  { "alljokecake/naysayer-theme.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "tokyonight-storm",
      colorscheme = "naysayer",
    },
  },
}
