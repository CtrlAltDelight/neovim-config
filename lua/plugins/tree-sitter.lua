return {
	{ 
		"nvim-treesitter/nvim-treesitter", 
		build = ":TSUpdate",
		opts = {
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "typescript", "tsx", "javascript", "html", "python", "dockerfile", "java", "latex", "markdown", "json", "css", "rust", "sql", "yaml",  },
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		},
		config = true,
	}, -- accurate syntax hilighting, indentation, and other editing features
}
