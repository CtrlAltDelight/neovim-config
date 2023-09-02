local keymap = vim.keymap

-- Leader key set in lazy.lua

-- F keys

keymap.set("n", "<F1>",      ":h ")                                                                        -- help on some function
keymap.set("n", "<F2>",      ":tabe ")                                                                     -- open a file in a new tab
keymap.set("n", "<F3>",      ":w<cr>")                                                                     -- save current file
keymap.set("n", "<F4>",      ":q<cr>")                                                                     -- close current file
keymap.set("n", "<S-F4>",    ":q!<cr>")                                                                    -- close current file (without saving!)
keymap.set("n", "<F8>",      ":noh<cr>")                                                                   -- stop highlight search
keymap.set("n", "<F11>",     "!make")                                                                      -- run first make rule/target
keymap.set("n", "<F12>",     ":w<cr>:!gcc -o placeholder % -lm && ./placeholder && rm -f placeholder<CR>") -- run current C file (Does not work for multiple files)
keymap.set('n', '<leader>0', ":tabe ~/.config/nvim/init.lua<cr>", {})                                      -- open init.lua
keymap.set('n', '<leader>9', ":!make test<cr>", {})                                                        -- run `make test`

-- Quality of Life

vim.g.mapleader = " "                                   -- set leader key to space
keymap.set("n", ";",         ":")                       -- saves on pressing shift for :
keymap.set("n", "<C-k>",     "<C-w>k")                  -- move up a window
keymap.set("n", "<C-j>",     "<C-w>j")                  -- move down a window
keymap.set("n", "<C-h>",     "<C-w>h")                  -- move left a window
keymap.set("n", "<C-l>",     "<C-w>l")                  -- move right a window
keymap.set("n", "<C-Up>",    ":resize +2<cr>")          -- resize window up
keymap.set("n", "<C-Down>",  ":resize -2<cr>")          -- resize window down
keymap.set("n", "<C-Left>",  ":vertical resize +2<cr>") -- resize window left
keymap.set("n", "<C-Right>", ":vertical resize -2<cr>") -- resize window right
keymap.set("n", "<leader>h", ":split<cr>")              -- split window horizontally
keymap.set("n", "<leader>v", ":vsplit<cr>")             -- split window vertically
keymap.set("n", "<leader>q", ":q<cr>")                  -- close current window
keymap.set("n", "<leader>Q", ":q!<cr>")                 -- close current window (without saving!)
keymap.set("n", "<leader>w", ":w<cr>")                  -- save current file
keymap.set("n", "<leader>W", ":wa<cr>")                 -- save all files
keymap.set("n", "-", "<C-a>")                           -- increment number
keymap.set("n", "+", "<C-x>")                           -- decrement number

keymap.set("n", "<leader>t", ":ToggleTerm size=10 direction=horizontal<cr>") -- open terminal

keymap.set('t', '<Esc>', '<C-\\><C-n><C-w>k', { noremap = true, silent = true })
