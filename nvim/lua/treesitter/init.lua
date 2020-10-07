require'nvim-treesitter.configs'.setup {
    ensure_installed = { "bash", "c", "cpp", "lua", "python" },     -- one of "all", "language", or a list of languages
    highlight = {
        enable = true,              -- false will disable the whole extension
        disable = {},  -- list of language that will be disabled
    },
    refactor = {
        highlight_current_scope = { enable = false },
        highlight_definitions = {enable = true},
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    }
}

--         textobjects = {
--             select = {
--                 enable = true,
--                 keymaps = {
--                     -- You can use the capture groups defined in textobjects.scm
--                     ["af"] = "@function.outer",
--                     ["if"] = "@function.inner",
--                     ["ac"] = "@class.outer",
--                     ["ic"] = "@class.inner",
--                 }
--             }
--         }
