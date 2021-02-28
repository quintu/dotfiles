require'lspsaga'.init_lsp_saga()
local opts = {noremap = true, silent = true}

map = vim.api.nvim_set_keymap
map("n", "gd", "<cmd>Lspsaga preview_definition<CR>", opts)

-- nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
-- nnoremap <silent> gh :Lspsaga lsp_finder<CR>
-- nnoremap <silent><leader>ca :Lspsaga code_action<CR>
-- nnoremap <silent>K :Lspsaga hover_doc<CR>
