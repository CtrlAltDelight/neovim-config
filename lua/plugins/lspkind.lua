return {
	{
		"onsails/lspkind.nvim",
		config = function()
			local cmp = require("cmp")
			local lspkind = require("lspkind")
			cmp.setup({
				formatting = {
					format = lspkind.cmp_format({}),
				},
			})
		end,
	},
}
