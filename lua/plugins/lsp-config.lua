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
                    "dockerls",
                    "docker_compose_language_service",
                    "clangd", -- C, C++
                    "rust_analyzer", -- Rust
                    "gopls", -- Go
                    "jdtls", -- Java
                    "pyright", -- Python
                    "html", -- HTML
                    "cssls", -- CSS
                    "lua_ls", -- Lua
                    "tailwindcss", -- tailwindcss
                    "prismals",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require("lspconfig")
            vim.diagnostic.config({
                -- virtual_text = {
                -- 	prefix = "", -- icon only, no message
                -- 	spacing = 2,
                -- 	format = function(diagnostic)
                -- 		return "" -- hide message text completely
                -- 	end,
                -- },
                virtual_text = false,
                signs = true,
                underline = true,
                update_in_insert = false,
                severity_sort = true,
            })
            lspconfig.lua_ls.setup({ capabilities = capabilities })                 -- lua
            lspconfig.ts_ls.setup({ capabilities = capabilities })                  -- js/ts
            lspconfig.clangd.setup({ capabilities = capabilities })                 -- C,C++
            lspconfig.rust_analyzer.setup({ capabilities = capabilities })          -- Rust
            lspconfig.gopls.setup({ capabilities = capabilities })                  -- Go
            lspconfig.jdtls.setup({ capabilities = capabilities })                  -- Java
            lspconfig.pyright.setup({ capabilities = capabilities })                -- Python
            lspconfig.html.setup({ capabilities = capabilities })                   -- HTML
            lspconfig.cssls.setup({ capabilities = capabilities })                  -- CSS
            lspconfig.tailwindcss.setup({ capabilities = capabilities })            -- tailwindcss
            lspconfig.dockerls.setup({ capabilities = capabilities })               -- Docker
            lspconfig.docker_compose_language_service.setup({ capabilities = capabilities }) -- Docker
            lspconfig.prismals.setup({ capabilities = capabilities })               --prisma

            -- keymap

            vim.keymap.set("n", "K", vim.lsp.buf.hover, { noremap = true })
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true })
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { noremap = true })
            vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, { noremap = true, silent = true })
            vim.keymap.set("n", "gl", function()
                vim.diagnostic.open_float(nil, {
                    focusable = true,
                    border = "rounded",
                    source = "always",
                    header = "",
                    prefix = "",
                })
            end, { desc = "Show diagnostic float" })
        end,
    },
}
