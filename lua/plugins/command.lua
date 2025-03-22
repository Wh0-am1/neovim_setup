return {
    "numToStr/Comment.nvim",
    config = function()
        require("Comment").setup({})
    end,
}

--[[
    Keymaps:
        gcc : comment a line
        gc : multiple line using Visual Mode
        gb : block
    ]]
