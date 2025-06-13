return {
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("bufferline").setup({
                options = {
                    indicator = {
                        icon = "❰ ",
                    },
                    offsets = {
                        {
                            filetype = "neo-tree",
                            text = "File Explorer",
                            highlight = "Directory",
                            separator = true, -- use a "true" to enable the default, or set your own character
                        },
                    },
                },
            })
            -- keymaps
            vim.keymap.set("n", "<TAB>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
            vim.keymap.set("n", "<S-TAB>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
            vim.keymap.set("n", "<M-]>", ":BufferLineMoveNext<CR>", { noremap = true, silent = true })
            vim.keymap.set("n", "<M-[>", ":BufferLineMovePrev<CR>", { noremap = true, silent = true })
        end,
    },
}
