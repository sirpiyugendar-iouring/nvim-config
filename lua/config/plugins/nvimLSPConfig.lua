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
			local lsp = require("lspconfig")
			lsp.gopls.setup{capabilities = capabilities }
			-- lsp.rust_analyzer.setup{capabilities = capabilities }
			-- lsp.lua_ls.setup{capabilities = capabilities }
			--          lsp.jsonls.setup{capabilities = capabilities }
		end,
	}
}
