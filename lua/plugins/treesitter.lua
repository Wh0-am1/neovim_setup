return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        require("nvim-ts-autotag").setup()
        configs.setup({
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
