return {
    {
        vim.keymap.set('n', '<leader>=', ': resize +5<CR>', { silent = true});
        vim.keymap.set('n', '<leader>-', ': resize -5<CR>', { silent = true});
        vim.keymap.set('n', 'ga', ': vertical resize +5<CR>', { silent = true});
        vim.keymap.set('n', 'ge', ': vertical resize -5<CR>', { silent = true});
    }
}
