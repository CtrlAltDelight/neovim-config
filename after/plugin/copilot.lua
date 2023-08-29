-- Change copilot completion keymap to <C-a>
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true

vim.api.nvim_set_keymap('i', '<C-k>', 'copilot#Accept("<CR>")', {expr=true, silent=true})
vim.api.nvim_set_keymap('i', '<C-l>', '<Plug>(copilot-next)', {silent=true})
vim.api.nvim_set_keymap('i', '<C-j>', '<Plug>(copilot-previous)', {silent=true})


