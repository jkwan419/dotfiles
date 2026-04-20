return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		-- config = function()
		-- 	vim.cmd("colorscheme tokyonight")
		-- end,
	},
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		-- config = function()
		-- 	vim.cmd("colorscheme solarized-osaka")
		-- end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {
			styles = {
				transparency = true,
			},
		},
		config = function(_, opts)
			require("rose-pine").setup(opts)
			vim.cmd("colorscheme rose-pine")
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		-- config = function()
		-- 	vim.cmd("colorscheme catppuccin")
		-- 	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		-- 	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		-- end,
	},
}
