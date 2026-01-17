local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', function ()
    builtin.find_files(
    {
    }
    )
end, { silent = true })

vim.keymap.set('n', '<leader>bf', function()
    local builtin = require('telescope.builtin')
    builtin.buffers(
    {
    show_all_buffers=true,
    sort_mru = true,
    }
    )
end, {silent = true })

vim.keymap.set('n', '<leader>hh', function()
    builtin.help_tags()
end, { silent = true })

vim.keymap.set('n', '<leader>gg', function()
    builtin.live_grep(
    {
        cwd = vim.fn.expand('%:p:h')
    }
    )
end, { silent = true})
return {}
