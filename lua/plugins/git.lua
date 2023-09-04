return {
	{ "lewis6991/gitsigns.nvim", config = true },
	{
		"github/copilot.vim",
		lazy = false,
		config = function()
			-- Change copilot completion keymap to <C-a>
			vim.g.copilot_no_tab_map = true
			vim.g.copilot_assume_mapped = true

			vim.api.nvim_set_keymap("i", "<C-k>", 'copilot#Accept("<CR>")', { expr = true, silent = true })
			vim.api.nvim_set_keymap("i", "<C-l>", "<Plug>(copilot-next)", { silent = true })
			vim.api.nvim_set_keymap("i", "<C-j>", "<Plug>(copilot-previous)", { silent = true })
		end,
	},
	{
		"tpope/vim-fugitive",
		config = function()
			vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
			vim.keymap.set("n", "<leader>ga", ":Git add %<cr>")
			vim.keymap.set("n", "<leader>gc", ":Git commit<cr>")
			vim.keymap.set("n", "<leader>gp", ":Git push<cr>")
		end,
	},
}
