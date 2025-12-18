local colors = require("spongvim.config.colors")

return {
  "rose-pine/neovim",
  name = "rose-pine",
  lazy = false,      -- load at startup
  priority = 1000,   -- load before other UI plugins
  enabled = true,
  config = function()
    require("rose-pine").setup({})
    vim.cmd("colorscheme rose-pine")
--    colors.apply()
  end,
}

