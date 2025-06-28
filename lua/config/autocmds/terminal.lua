vim.api.nvim_create_autocmd('TermOpen', {
    group = vim.api.nvim_create_augroup('terminal', { clear = true }),
    callback = function()
        vim.opt.number = false
        vim.opt.relativenumber = false
    end
})
return {}
