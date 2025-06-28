return {
    {
        'nvim-telescope/telescope.nvim',
        version="v0.1.4",
        dependencies = {
            'nvim-lua/plenary.nvim',
            'BurntSushi/ripgrep',
        },
        config = function()
            require'telescope'.setup {}
        end
    }
}
