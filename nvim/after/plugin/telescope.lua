local builtin = require('telescope.builtin')
-- all file search
vim.keymap.set('n', '<C-f>', builtin.find_files, {})
-- live grep
vim.keymap.set('n', '<C-g>', builtin.live_grep, {})
-- git file search
--vim.keymap.set('n', '<C-r>', builtin.git_files, {})

--vim.keymap.set('n', '<leader>pg', function()
    --builtin.grep_string({ search = vim.fn.input('Grep > ') });
--end)
