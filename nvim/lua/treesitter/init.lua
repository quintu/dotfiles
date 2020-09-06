require'nvim-treesitter.configs'.setup {
  ensure_installed = { "bash", "c", "cpp", "lua", "python" },     -- one of "all", "language", or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = {},  -- list of language that will be disabled
  },
  refactor = {
    highlight_current_scope = { enable = true },
  },
}
