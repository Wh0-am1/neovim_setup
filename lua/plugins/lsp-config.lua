---@diagnostic disable: trailing-space
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
                    "lua_ls", -- lua
                    "ts_ls", -- js/ts
                    "clangd", -- C, C++
                    "rust_analyzer", -- Rust
                    "gopls", -- Go
                    "jdtls", -- Java
                    "pyright", -- Python
                    "html", -- HTML
                    "cssls", -- CSS
                    "lua_ls", -- Lua
                    "tailwindcss", -- tailwindcss
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({ capabilities = capabilities }) -- lua
            lspconfig.ts_ls.setup({ capabilities = capabilities }) -- js/ts
            lspconfig.clangd.setup({ capabilities = capabilities }) -- C,C++
            lspconfig.rust_analyzer.setup({ capabilities = capabilities }) -- Rust
            lspconfig.gopls.setup({ capabilities = capabilities }) -- Go
            lspconfig.jdtls.setup({ capabilities = capabilities }) -- Java
            lspconfig.pyright.setup({ capabilities = capabilities }) -- Python
            lspconfig.html.setup({ capabilities = capabilities }) -- HTML
            lspconfig.cssls.setup({ capabilities = capabilities }) -- CSS
            lspconfig.tailwindcss.setup({ capabilities = capabilities }) -- tailwindcss

            -- keymap
            vim.keymap.set("n", "K", vim.lsp.buf.hover, { noremap = true })
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true })
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { noremap = true })
            vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, { noremap = true, silent = true })
        end,
    },
}
