return{
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  vim.keymap.set("n", "<C-n>", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
  lazy = false,
}
