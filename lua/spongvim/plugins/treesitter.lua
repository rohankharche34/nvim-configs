--require('lazy').setup({
--  'nvim-treesitter/nvim-treesitter',
--  lazy = false,
--  build = ':TSUpdate'
--})

return {
	{
		"nvim-treesitter/nvim-treesitter",	
		lazy = false,
		build = ':TSUpdate',
		dependencies = {
			"nvim-treesitter/nvim-treesitter-context",
		},
	},
	{
		"mbbill/undotree",
	},
	{
		"tpope/vim-fugitive",
	},
}
