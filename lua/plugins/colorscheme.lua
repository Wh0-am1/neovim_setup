return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            transparent_background = true,
        })
        vim.cmd.colorscheme("catppuccin")
        vim.cmd([[
        highlight Normal     guibg=NONE ctermbg=NONE
        highlight NormalNC   guibg=NONE ctermbg=NONE
        highlight NormalFloat guibg=NONE ctermbg=NONE
        highlight EndOfBuffer guibg=NONE ctermbg=NONE
        highlight VertSplit  guibg=NONE ctermbg=NONE
        ]])
    end,
}
