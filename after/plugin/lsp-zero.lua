local lsp = require('lsp-zero').preset({"recommended"})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)


lsp.ensure_installed({
	'tsserver',
	'eslint',
	'rust_analyzer',
	'clangd',
})

--lsp.set_sign_icons({
	--error = '✘',
	--warn = '▲',
	--hint = '⚑',
	--info = '»'
--})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
require('lspconfig').lua_ls.setup({
	lsp.nvim_lua_ls()
})

lsp.setup()

-- set up cmp after lsp-zero
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
	completion = {
		autocomplete = false
	},
	mapping = {
		-- `Enter` key to confirm completion
		['<CR>'] = cmp.mapping.confirm({select = false}),
		['<C-n>'] = cmp.mapping.scroll_docs(-4),
		['<C-p>'] = cmp.mapping.scroll_docs(4),

		-- Ctrl+Space to trigger completion menu
		['<C-Space>'] = cmp.mapping.complete(),

		-- Navigate between snippet placeholder
		['<C-f>'] = cmp_action.luasnip_jump_forward(),
		['<C-b>'] = cmp_action.luasnip_jump_backward(),
	}
})
