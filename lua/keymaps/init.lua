vim.g.mapleader = " " -- setting leader key
vim.keymap.set({ "n" }, "<C-s>", ":w<CR>", { noremap = true, silent = true }) -- save
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true }) -- Move line down
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true }) -- Move line up
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true }) -- Move selected lines down
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true }) -- Move selected lines up
vim.keymap.set("n", ".", ";", { noremap = true, silent = true }) -- search backward ( f or t )
vim.keymap.set("n", "<C-M-right>", ":vsplit<CR>", { noremap = true, silent = true }) -- vertical split
vim.keymap.set("n", "<C-M-down>", ":split<CR>", { noremap = true, silent = true }) -- horizontal split
vim.keymap.set("n", "<C-M-d>", ":noh<CR>", { noremap = true, silent = true }) -- deselect
vim.keymap.set("n", "<leader>t", ":rightbelow vert term<CR>", { noremap = true, silent = true }) -- open terminal
vim.keymap.set("n", "<leader>w", "<C-w>", { noremap = true, silent = true }) -- swtiching window
vim.keymap.set("t", "<leader><Esc>", "<C-\\><C-n>", { noremap = true, silent = true }) -- escape from terminal mode
vim.keymap.set("v", "(", "s()<Esc>P", { noremap = true, silent = true }) --
vim.keymap.set("v", ")", "s()<Esc>P", { noremap = true, silent = true }) --
vim.keymap.set("v", "{", "s{}<Esc>P", { noremap = true, silent = true }) --
vim.keymap.set("v", "}", "s{}<Esc>P", { noremap = true, silent = true }) --
vim.keymap.set("v", "[", "s[]<Esc>P", { noremap = true, silent = true }) --  visual mode wrap
vim.keymap.set("v", "]", "s[]<Esc>P", { noremap = true, silent = true }) --
vim.keymap.set("v", "`", "s``<Esc>P", { noremap = true, silent = true }) --
vim.keymap.set("v", '"', 's""<Esc>P', { noremap = true, silent = true }) --
vim.keymap.set("v", "'", "s''<Esc>P", { noremap = true, silent = true }) --
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true }) -- move selected lines
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true }) -- move selected lines
vim.keymap.set("n", "<C-w>", ":bdelete<CR>", { noremap = true, silent = true }) -- move selected lines
