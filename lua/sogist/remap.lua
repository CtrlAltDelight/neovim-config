-- Leader key set in lazy.lua

-- F keys
vim.keymap.set("n", "<F1>",      ":h ")                                                                        -- help on some function
vim.keymap.set("n", "<F2>",      ":tabe ")                                                                     -- open a file in a new tab
vim.keymap.set("n", "<F3>",      ":w<cr>")                                                                     -- save current file
vim.keymap.set("n", "<F4>",      ":q<cr>")                                                                     -- close current file
vim.keymap.set("n", "<S-F4>",    ":q!<cr>")                                                                    -- close current file (without saving!)
vim.keymap.set("n", "<F8>",      ":noh<cr>")                                                                   -- stop highlight search
vim.keymap.set("n", "<F11>",     "!make")                                                                      -- run first make rule/target
vim.keymap.set("n", "<F12>",     ":w<cr>:!gcc -o placeholder % -lm && ./placeholder && rm -f placeholder<CR>") -- run current C file (Does not work for multiple files)
vim.keymap.set('n', '<leader>0', ":tabe ~/.config/nvim/init.lua<cr>", {})                                      -- open init.lua
vim.keymap.set('n', '<leader>9', ":!make test<cr>", {})                                                        -- run `make test`

-- Quality of Life
vim.keymap.set("n", ";",         ":")                       -- saves on pressing shift for :
vim.keymap.set("n", "<C-k>",     "<C-w>k")                  -- move up a window
vim.keymap.set("n", "<C-j>",     "<C-w>j")                  -- move down a window
vim.keymap.set("n", "<C-h>",     "<C-w>h")                  -- move left a window
vim.keymap.set("n", "<C-l>",     "<C-w>l")                  -- move right a window
vim.keymap.set("n", "<C-Up>",    ":resize +2<cr>")          -- resize window up
vim.keymap.set("n", "<C-Down>",  ":resize -2<cr>")          -- resize window down
vim.keymap.set("n", "<C-Left>",  ":vertical resize +2<cr>") -- resize window left
vim.keymap.set("n", "<C-Right>", ":vertical resize -2<cr>") -- resize window right
vim.keymap.set("n", "<leader>h", ":split<cr>")              -- split window horizontally
vim.keymap.set("n", "<leader>v", ":vsplit<cr>")             -- split window vertically
vim.keymap.set("n", "<leader>q", ":q<cr>")                  -- close current window
vim.keymap.set("n", "<leader>Q", ":q!<cr>")                 -- close current window (without saving!)
vim.keymap.set("n", "<leader>w", ":w<cr>")                  -- save current file
vim.keymap.set("n", "<leader>W", ":wa<cr>")                 -- save all files

vim.keymap.set("n", "<leader>t", ":ToggleTerm size=10 direction=horizontal<cr>") -- open terminal

vim.keymap.set('t', '<Esc>', '<C-\\><C-n><C-w>k', { noremap = true, silent = true })
