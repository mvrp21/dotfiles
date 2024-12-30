vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>p', vim.cmd.Ex)
vim.keymap.set('n', '<leader>v', vim.cmd.vs)
vim.keymap.set('n', '<leader>s', vim.cmd.sv)

-- move visual selection up or down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- do not move cursor when concatenating lines below
vim.keymap.set('n', 'J', 'mzJ`z')

-- keep cursor centered when using jumps
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', '+', '<C-W>>')
vim.keymap.set('n', '_', '<C-W><')

-- paste buffer over selection without overriding it
vim.keymap.set('x', '<C-p>', '"_dP')

-- copy to system clipboard with Y
vim.keymap.set('v', 'Y', '"+y')

-- lol
vim.keymap.set('n', 'Q', '<nop>')

-- this one's nice ngl, could be a more elaborate fn but nah
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- pane movement done right
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')

-- nao ria n tem graca
vim.api.nvim_create_user_command('Q',  'q' , { nargs = 0 })
vim.api.nvim_create_user_command('Qw', 'wq', { nargs = 0 })
vim.api.nvim_create_user_command('QW', 'wq', { nargs = 0 })
vim.api.nvim_create_user_command('W',  'w',  { nargs = 0 })
vim.api.nvim_create_user_command('Wq', 'wq', { nargs = 0 })
vim.api.nvim_create_user_command('WQ', 'wq', { nargs = 0 })
vim.api.nvim_create_user_command('VS', 'vs', { nargs = 0 })
vim.api.nvim_create_user_command('Vs', 'vs', { nargs = 0 })
vim.api.nvim_create_user_command('SV', 'sv', { nargs = 0 })
vim.api.nvim_create_user_command('Sv', 'sv', { nargs = 0 })
