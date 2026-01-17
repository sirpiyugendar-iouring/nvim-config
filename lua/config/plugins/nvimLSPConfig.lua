return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
    		"williamboman/mason-lspconfig.nvim",
            "saghen/blink.cmp",
		},
		config = function()
			require("mason").setup{}
			require("mason-lspconfig").setup{}
            local capabilities = require("blink.cmp").get_lsp_capabilities()
            vim.lsp.config('gopls', {
                capabilities = capabilities,
            })
            vim.lsp.config('clangd', {
                capabilities = capabilities,
            })
            vim.lsp.config('biome', {
                capabilities = capabilities,
            })
            vim.lsp.config('eslint', {
                capabilities = capabilities,
            })
            vim.lsp.config('pyrefly', {
                capabilities = capabilities,
            })
			-- lsp.rust_analyzer.setup{capabilities = capabilities }
			-- lsp.lua_ls.setup{capabilities = capabilities }
			--          lsp.jsonls.setup{capabilities = capabilities }
		end,
	}
}
