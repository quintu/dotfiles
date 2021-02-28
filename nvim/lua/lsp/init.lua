local lspconfig = require('lspconfig')
-- local completion = require('completion')
local lsp_status = require('lsp-status')

local nvim_on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    -- completion.on_attach(client)
    lsp_status.on_attach(client)

    vim.api.nvim_command('autocmd CursorHold <buffer> lua vim.lsp.diagnostic.show_line_diagnostics()')
    -- vim.fn.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", {noremap = true, silent = true})
    vim.fn.nvim_set_keymap("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", {noremap = true, silent = true})
    vim.fn.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.implementation()<CR>", {noremap = true, silent = true})
    --  vim.fn.nvim_set_keymap("n", "<c-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", {noremap = true, silent = true})
    vim.fn.nvim_set_keymap("n", "1gD", "<cmd>lua vim.lsp.buf.type_definition()<CR>", {noremap = true, silent = true})
    vim.fn.nvim_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", {noremap = true, silent = true})
    vim.fn.nvim_set_keymap("n", "g0", "<cmd>lua vim.lsp.buf.document_symbol()<CR>", {noremap = true, silent = true})
    vim.fn.nvim_set_keymap("n", "gW", "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>", {noremap = true, silent = true})
end

lsp_status.register_progress()

lspconfig.clangd.setup{
    on_attach = nvim_on_attach,
    capabilities = lsp_status.capabilities
}

lspconfig.cmake.setup{
    on_attach = nvim_on_attach,
    capabilities = lsp_status.capabilities
}

lspconfig.pyright.setup{
    on_attach = nvim_on_attach,
    capabilities = lsp_status.capabilities
}

lspconfig.yamlls.setup{}

-- TODO: update LS and update cmd
lspconfig.sumneko_lua.setup{
    cmd = {"/home/quint/.cache/nvim/nvim_lsp/sumneko_lua/lua-language-server/bin/Linux/lua-language-server", "-E", "/home/quint/.cache/nvim/nvim_lsp/sumneko_lua/lua-language-server/main.lua"},
    on_attach=nvim_on_attach,
    settings = {
	Lua = {
	    runtime = {
		version = 'LuaJIT',
		path = vim.split(package.path, ';'),
	    },
	    diagnostics = {
		globals = {'vim'}
	    },
	    workspace = {
		library = {
		    [vim.fn.expand('$VIMRUNTIME/lua')] = true,
		    [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
		},
	    }
	}
    }
}

lspconfig.vimls.setup{
    capabilities = lsp_status.capabilities,
    on_attach=nvim_on_attach,
    cmd = { "vim-language-server", "--stdio" },
    docs = {
	description = "https://github.com/iamcco/vim-language-server\n\nIf you don't want to use Nvim to install it, then you can use:\n```sh\nnpm install -g vim-language-server\n```\n"
    },
    filetypes = { "vim" },
    init_options = {
	diagnostic = {
	    enable = true
	},
	indexes = {
	    count = 3,
	    gap = 100,
	    projectRootPatterns = { "runtime", "nvim", ".git", "autoload", "plugin" },
	    runtimepath = true
	},
	iskeyword = "@,48-57,_,192-255,-#",
	runtimepath = "",
	suggest = {
	    fromRuntimepath = true,
	    fromVimruntime = true
	},
	vimruntime = ""
    }
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
	virtual_text = true,
	signs = true,
    }
)
