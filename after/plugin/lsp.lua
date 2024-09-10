local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)


lsp_zero.preset("recommended")
lsp_zero.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
    mapping = cmp.mapping.preset.insert({
		--['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
		--['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),
		['<CR>'] = cmp.mapping.confirm({ select = false }),
		--['<C-Space>'] = cmp.mapping.complete()
	})
})


require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here
  -- with the ones you want to install
  ensure_installed = {'ts_ls',  'clangd', 'lua_ls', 'gopls', 'eslint', 'pyright', 'html'},

  handlers = {
    lsp_zero.default_setup,

  }
})

require('lspconfig').ocamllsp.setup({})





