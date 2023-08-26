-- Change copilot completion keymap to <C-a>
vim.api.nvim_set_keymap('i', '<C-a>', 'copilot#Accept("<CR>")', {expr=true, silent=true, script=true})
vim.cmd('let g:copilot_no_tab_map= v:true')
