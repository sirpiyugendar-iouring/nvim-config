vim.keymap.set('n', 'gq', ':GitConflictListQf<CR>', {silent=true})
vim.keymap.set('n', 'gn', ':GitConflictNextConflict<CR>', {silent=true})
vim.keymap.set('n', 'gp', ':GitConflictPrevConflict<CR>', {silent=true})
vim.keymap.set('n', 'go', ':GitConflictChooseOurs<CR>', {silent=true})
vim.keymap.set('n', 'gt', ':GitConflictChooseTheirs<CR>', {silent=true})
vim.keymap.set('n', 'g0', ':GitConflictChooseNone<CR>', {silent=true})
vim.keymap.set('n', 'gb', ':GitConflictChooseBoth<CR>', {silent=true})
return {}
