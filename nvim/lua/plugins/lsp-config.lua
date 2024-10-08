return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"angularls",
					-- "typescript_language_server",
					-- "tailwindcss_language_server",
					"clangd",
					"cssls",
					"golangci_lint_ls",
					"html",
					"jsonls",
					"jdtls",
					"quick_lint_js",
					"tsserver",
					"kotlin_language_server",
					"lua_ls",
					"intelephense",
					"jedi_language_server",
					"rust_analyzer",
					"sqlls",
					"sqls",
          "gopls",
					"biome",
					"emmet_language_server",
				},
				automatic_installation = true,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.tsserver.setup({ capabilities = capabilities })
			lspconfig.jdtls.setup({ capabilities = capabilities })
			lspconfig.rust_analyzer.setup({ capabilities = capabilities })
			lspconfig.dartls.setup({ capabilities = capabilities })
			lspconfig.biome.setup({ capabilities = capabilities })
			lspconfig.gopls.setup({ capabilities = capabilities })
			lspconfig.html.setup({ capabilities = capabilities })
			lspconfig.cssls.setup({ capabilities = capabilities })
			lspconfig.clangd.setup({ capabilities = capabilities })
			lspconfig.jsonls.setup({ capabilities = capabilities })
			lspconfig.angularls.setup({ capabilities = capabilities })
			lspconfig.golangci_lint_ls.setup({ capabilities = capabilities })
			lspconfig.quick_lint_js.setup({ capabilities = capabilities })
			lspconfig.emmet_language_server.setup({ capabilities = capabilities })
			lspconfig.jedi_language_server.setup({ capabilities = capabilities })
			lspconfig.sqlls.setup({ capabilities = capabilities })
			lspconfig.sqls.setup({ capabilities = capabilities })
			lspconfig.intelephense.setup({ capabilities = capabilities })
			lspconfig.kotlin_language_server.setup({ capabilities = capabilities })
			-- lspconfig.typescript_language_server.setup({ capabilities = capabilities })
			-- lspconfig.tailwindcss_language_server.setup({ capabilities = capabilities })

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			---@diagnostic disable-next-line: undefined-global
			vim.keymap.set("n", "cd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "cr", vim.lsp.buf.references, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set({ "n", "v" }, "<leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>", {})
		end,
	},
}
