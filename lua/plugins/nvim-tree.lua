return {
	{ 
		"nvim-tree/nvim-tree.lua", 
		view = { width = 30, }, 
		renderer = { group_empty = true, },
		filters = { dotfiles = true, }, 
		config = function()
			vim.keymap.set('n', '<leader>e',  ":NvimTreeToggle<CR>", {})
			vim.keymap.set('n', '<leader>fe', ":NvimTreeFocus<CR>", {})
		end
	},
}
