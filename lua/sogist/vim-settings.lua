vim.cmd('colorscheme rose-pine')

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.showmatch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.colorcolumn = '100'
vim.opt.cursorline = true

vim.opt.lazyredraw = true
vim.opt.updatetime = 50

vim.opt.history = 50

vim.opt.showcmd = true
vim.opt.ruler = true

vim.opt.confirm = true

vim.api.nvim_create_user_command('Newc', ":normal i#include <stdio.h><CR>#include <stdlib.h><CR>#include <stdbool.h><CR>#include <string.h><CR>#include <assert.h><CR><CR>int main(int argc, char* argv[]) {<CR><CR><TAB>return EXIT_SUCCESS;<CR>}<CR>/* vim: set tabstop=4 shiftwidth=4 fileencoding=utf-8 noexpandtab: */<C-Up><C-Up><C-Up><tab>", {}) -- inserts boilerplate for a new C program

-- termguicolors is set inside of lazy.lua
