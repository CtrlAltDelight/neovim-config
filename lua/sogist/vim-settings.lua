vim.cmd('colorscheme catppuccin')            -- colorscheme
vim.cmd('filetype indent on')                -- makes indents different for specific types
vim.cmd('set backspace=2')                   -- makes backspace work
vim.cmd('set number')                        -- line numbers
vim.cmd('set relativenumber')                        -- relative line numbers
vim.cmd('set tabstop=4')
vim.cmd('set shiftwidth=4')
vim.cmd('set encoding=utf-8')
vim.cmd('set noexpandtab')                   -- tabs are good
vim.cmd('set smarttab')                      -- aligns to space when tabbing
vim.cmd('set autoindent')                    -- copy indent from above line
vim.cmd('set hlsearch')                      -- highlight search
vim.cmd('set incsearch')                     -- highlight search while typing
vim.cmd('set showmatch')                     -- show matching brackets
vim.cmd('set history=50')                    -- stores last 50 commands
vim.cmd('set ignorecase')                    -- search ignores case sensitive
vim.cmd('set autoindent')                    -- copies indentation from previous line. TODO check if you like this
vim.cmd('set ruler')                         -- shows cursor position
vim.cmd('set encoding=utf8')                 -- non-ascii characters are encoded with utf8 by default
vim.cmd('set showcmd')                       -- show length of visual selections
vim.cmd('set complete=.,w,b,u')              -- makes autocomplete faster
vim.cmd('set splitright')                    -- creates vertical splits to the right
vim.cmd('set splitbelow')                    -- creates horizontal splits below
vim.cmd('set tabpagemax=30')                 -- show up to 30 tabs
vim.cmd('set wrap')                          -- wrap lines to fit window
vim.cmd('set lazyredraw')                    -- redraws the screen less often
vim.cmd('set showcmd')                       -- shows command in bottom no matter what
vim.cmd('set cursorline')                    -- puts a line where the cursor is
vim.cmd('set visualbell')                    -- enables visual bell
vim.cmd('set t_vb=')                         -- turns off the visual bell
vim.cmd('set wildmenu')                      -- autocomplete menu
vim.cmd('set foldenable')                    -- allows folding of codeblocks
vim.cmd('set foldlevelstart=10')             -- opens folds by default
vim.cmd('set foldmethod=indent')             -- folds based on indent (for python)
vim.cmd('let g:netrw_mouse_maps=0')          -- ignore mouse clicks when browsing directories
--vim.cmd('set timeoutlen=2500')               -- makes the timeout a bit longer (2.5 seconds)
--vim.cmd('set timeoutlen=1000 ttimeoutlen=0') -- disable escape keys (faster shift+o)
vim.cmd('set colorcolumn=100')               -- places a column at X characters into the file
vim.cmd('set confirm')                       -- Asks if you want to save before closing file
-- termguicolors is set inside of lazy.lua

vim.api.nvim_create_user_command('Newc', ":normal i#include <stdio.h><CR>#include <stdlib.h><CR>#include <stdbool.h><CR>#include <string.h><CR>#include <assert.h><CR><CR>int main(int argc, char* argv[]) {<CR><CR><TAB>return EXIT_SUCCESS;<CR>}<CR>/* vim: set tabstop=4 shiftwidth=4 fileencoding=utf-8 noexpandtab: */<C-Up><C-Up><C-Up><tab>", {}) -- inserts boilerplate for a new C program
