return {
	-- Pleasing Plugins
	{ "nvim-lualine/lualine.nvim", dependencies='nvim-tree/nvim-web-devicons', config=true }, -- nvim version of airline

	-- Useful plugins
	{ 
		"junegunn/vim-easy-align", 
		config=function() 
			vim.api.nvim_set_keymap('x', 'ga', '<Plug>(EasyAlign)', {})
			vim.api.nvim_set_keymap('n', 'ga', '<Plug>(EasyAlign)', {})
		end
	},
	{ "norcalli/nvim-colorizer.lua", opts = {'*'}, config = true }, -- Highlights the background of color codes eg: #558817
	{ "lervag/vimtex",  ft="tex" },
	{ "kaarmu/typst.vim", ft='typst', lazy=false },
	{ "folke/which-key.nvim", event = "VeryLazy", init = function() vim.o.timeout=true vim.o.timeoutlen=750 end, opts = {}},
	{ "folke/zen-mode.nvim", opts = {}, config = function() vim.keymap.set('n', '<leader>z', ":ZenMode<CR>", {}) end }, -- markdown toggle
	{ "akinsho/toggleterm.nvim", verison = "*", config=true},
	{ "neoclide/vim-jsx-improve" },
	{ "mbbill/undotree" },
	{ "kylechui/nvim-surround", version = "*", event = "VeryLazy", config = true },
	{ "dstein64/vim-startuptime" },
	{ "folke/trouble.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } }
}
