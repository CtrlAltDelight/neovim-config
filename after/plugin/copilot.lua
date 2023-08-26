-- Change copilot completion keymap to <C-a>
vim.g.copilot_no_tab_map = true

vim.api.nvim_set_keymap('i', '<C-a>', '<Plug>(copilot#Accept("<CR>"))', {expr=true, silent=true})
vim.keymap.set("i", "<C-n>", "<Plug>(copilot-next)", {expr=true, silent=true})
vim.keymap.set("i", "<C-p>", "<Plug>(copilot-previous)", {expr=true, silent=true})

