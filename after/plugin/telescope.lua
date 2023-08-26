local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})

-- telescope-undo extension
require("telescope").setup({
  extensions = {
	undo = {
	  side_by_side = true,
	  layout_strategy = "vertical",
	  layout_config = {
		preview_height = 0.8,
	  },
	  mappings = {
		  i = {
			["<Tab>"] = require("telescope-undo.actions").yank_additions,
			["<S-Tab>"] = require("telescope-undo.actions").yank_deletions,
			["<cr>"] = require("telescope-undo.actions").restore,
		  }
	  }
	},
  },
})
require("telescope").load_extension("undo")
vim.keymap.set('n', '<leader>u', ":Telescope undo<cr>", {})

