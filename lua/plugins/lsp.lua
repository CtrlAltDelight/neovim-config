return {
	
	--[[{
		"neovim/nvim-lspconfig",
	},
	{ 
		"windwp/nvim-autopairs", 
		event = "InsertEnter" 
	}, -- automatically pairs quotes, parenthesis, brackets etc.
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗"
					}
				}
			})
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"bash-ls",
					"dockerls",
					"html",
					"jsonls",
					"pyright",
					"rust_analyzer",
					"tsserver",
					"vimls",
					"yamlls",
					"cssls",
					"clangd",
					"eslint",
					"tailwindcss",
					"tsserver",
					"jdtls",
					"lua_ls",
				}
			})
		end
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			require("null-ls").config({})
			require("lspconfig")["null-ls"].setup({
				sources = {
					formatting.prettier
				}
			})
		end
	},]]--
}
