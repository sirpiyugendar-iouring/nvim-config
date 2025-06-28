-- Delete all but the current buffer

vim.keymap.set("n", 'bd', ':%bd|e#|bd#<CR>', { silent = true })

return {}
