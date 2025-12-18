return {
  "rebelot/kanagawa.nvim",
  name = "kanagawa",
--  lazy = false,      -- load at startup
--  priority = 1000,   -- load before other UI plugins
  enabled = false,
  config = function()
    require("kanagawa").setup({})
    vim.cmd("colorscheme kanagawa-lotus")
  end,
}
