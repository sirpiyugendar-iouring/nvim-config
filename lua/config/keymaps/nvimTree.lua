return {
    {
        vim.keymap.set('n', '<leader>d', function()
            local curr = vim.fn.expand("%:p:h")
            local tree = require('nvim-tree.api').tree
            tree.toggle{path=curr}
        end, { silent = true })
    }
}
