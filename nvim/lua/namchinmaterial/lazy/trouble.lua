return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim" },
	opts = { focus = true },
	cmd = "Trouble",
	keys = {
		{
			"<leader>tw",
			"<cmd>Trouble diagnostics toggle<cr>",
			desc = "Diagnostics (Trouble)",
		},
		{
			"<leader>td",
			"<cmd>Trouble todo toggle<cr>",
			desc = "Diagnostics (Trouble)",
		},
	},
}
