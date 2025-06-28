return {
	{
		vim.keymap.set('n', '<C-s>h', ':split<CR>', {silent = true});
		vim.keymap.set('n', '<C-s>v', ':vsplit<CR>', {silent = true});
	}
}
