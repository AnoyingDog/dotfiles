return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuchin",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("catppuccin")
  end,
}
