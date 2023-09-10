local function my_on_attach(bufnr)
	local api = require("nvim-tree.api")
	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	api.config.mappings.default_on_attach(bufnr)
	vim.keymap.set("n", "<LeftRelease>", api.node.open.edit, opts("Open")) -- One left click open
end

return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		version = "*",
		lazy = false,
		config = function()
			require("nvim-tree").setup({
				view = { width = 30 },
				renderer = {
					group_empty = true,
					icons = {
						glyphs = {
							git = {
								unstaged = "",
								staged = "",
								unmerged = "",
								renamed = "",
								untracked = "󰘓",
								deleted = "󰆴",
								ignored = "󰈉",
							},
							folder = { default = "", open = "" },
						},
					},
				},
				filters = { dotfiles = false },
				on_attach = my_on_attach,
			})

			vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {})
			vim.keymap.set("n", "<leader>fe", ":NvimTreeFocus<CR>", {})
		end,
	},
}
