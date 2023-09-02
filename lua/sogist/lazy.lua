local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.cmd('set termguicolors') -- for nvim-colorizer #d2a23e
require("lazy").setup('plugins')
--[[{

	-- LSP Support
	{ "neovim/nvim-lspconfig", config=true },
	{ "hrsh7th/nvim-compe", config=true },
	{ "hrsh7th/vim-vsnip", config=true },
	{ "hrsh7th/vim-vsnip-integ", config=true },
	{ "ray-x/lsp_signature.nvim", config=true },
	{ "onsails/lspkind-nvim", config=true },
	{ "glepnir/lspsaga.nvim", config=true },
	{ "folke/trouble.nvim", config=true },
	{ "folke/lsp-colors.nvim", config=true },
	{ "folke/lsp-trouble.nvim", config=true },
	{ "f
})
]]--
vim.keymap.set('n', '<leader>l', ":Lazy<CR>", {})
