return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
    config = function()
        local none_ls = require("null-ls")
        none_ls.setup({

            sources = {
                -- lua
                none_ls.builtins.formatting.stylua,

                -- Rust
                none_ls.builtins.formatting.rubocop,
                none_ls.builtins.diagnostics.rubocop,

                -- Js/Ts
                none_ls.builtins.formatting.prettier,
                require("none-ls.diagnostics.eslint_d"),
                -- python
                none_ls.builtins.formatting.black,
                none_ls.builtins.formatting.isort,
                require("none-ls.diagnostics.ruff"),
            },
        })

        -- keymap
        vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, { noremap = true })
    end,
}
