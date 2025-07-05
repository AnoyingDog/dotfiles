return {
  "catppuccin/nvim",
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      dark =  "mocha",
      transparent_background = false,

      styles = { 
        functions = {}
      },
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
