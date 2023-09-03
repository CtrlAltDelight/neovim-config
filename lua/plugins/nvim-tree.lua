local function my_on_attach(bufnr)
	local api = require('nvim-tree.api')
	local function opts(desc)
		return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

	api.config.mappings.default_on_attach(bufnr)
	vim.keymap.set('n', '<LeftRelease>', api.node.open.edit, opts('Open'))
end

return {
	{ 
		"nvim-tree/nvim-tree.lua", 
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		version = "*",
		lazy = false,
		view = { width = 30, }, 
		renderer = { group_empty = true, },
		filters = { dotfiles = true, }, 
		on_attach = my_on_attach,
		config = function()
			require("nvim-tree").setup {
				on_attach = my_on_attach,
			}

			vim.keymap.set('n', '<leader>e',  ":NvimTreeToggle<CR>", {})
			vim.keymap.set('n', '<leader>fe', ":NvimTreeFocus<CR>", {})
		end
	},
}
