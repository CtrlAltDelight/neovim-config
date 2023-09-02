return {
	{ 
		"neoclide/coc.nvim", 
		branch = "release",
		config = function()
			vim.cmd("let g:coc_global_extensions = [ 'coc-tsserver', 'coc-eslint', 'coc-prettier', 'coc-css', 'coc-lists', 'coc-highlight', 'coc-snippets' ]")
		end,
	},
}
