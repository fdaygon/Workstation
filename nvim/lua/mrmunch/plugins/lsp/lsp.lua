return {
		{ "VonHeikemen/lsp-zero.nvim", branch = 'v3.x',
		  dependencies = {
			"neovim/nvim-lspconfig",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/nvim-cmp",
			"L3MON4D3/LuaSnip",
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",


		  },
		  config = function()
			local mason = require('mason')
			local mason_lsp = require('mason-lspconfig')
			local lsp_zero = require('lsp-zero')
			lsp_zero.on_attach(function(client, bufnr)			
			lsp_zero.default_keymaps({buffer = bufnr})	
			end)

			
			mason.setup({})
			mason_lsp.setup({
				ensure_installed = {"gopls", "golangci_lint_ls", "lua_ls", "yamlls", "jsonls" },
				handlers = {
					lsp_zero.default_setup,
					lua_ls = function()
					  local lua_opts = lsp_zero.nvim_lua_ls()
					  local lspconfig = require('lspconfig')
					  local util = require "lspconfig/util"

					-- Setup for lua config
					lspconfig.lua_ls.setup(lua_opts)
					-- Setup for gopls config
					lspconfig.gopls.setup({
					  cmd = {"gopls"},
					  filetypes = { "go", "gomod", "gowork", "gotmpl"},
					  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
					  settings = {
					    gopls = {
					      completeUnimported = true,
					      usePlaceholders = true,
					      analyses = {
					        unusedparams = true, 
					},
				      },
			      },

					})

					end,
				}
			})
			local cmp = require('cmp')
			local cmp_select = {behavior = cmp.SelectBehavior.Select}

			cmp.setup({
				source = {
					{name = 'path'},
					{name = 'nvim_lsp'},
					{name = 'nvim_lua'},
					{name = 'luasnip', keyword_length = 2},
    					{name = 'buffer', keyword_length = 3},
				},
				formatting = lsp_zero.cmp_format(),
				mapping = cmp.mapping.preset.insert({
    					['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    					['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    					['<C-Space>'] = cmp.mapping.confirm({ select = true }),
    					['<C-y>'] = cmp.mapping.complete(),
  				}),
			})




		  end
		 	},
}
