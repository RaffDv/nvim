-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set
map("n", "<A-j>", ":m .+1<CR>==") -- move line up(n)
map("n", "<A-k>", ":m .-2<CR>==") -- move line down(n)
map("v", "<A-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
map("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move line down(v)
map("n", "<C-u>", "<C-u>zz") -- move up and centralize
map("n", "<C-d>", "<C-d>zz") -- move down and centralize

map("i", "jk", "<ESC>") -- enter on normal mode
map("n", ";", ":") -- open command whitout shift

map("n", "<C-M-k>", "<cmd>lua require('multicursors').add_cursor_up()<CR>", { desc = "Add cursor up" })
map("n", "<C-M-j>", "<cmd>lua require('multicursors').add_cursor_down()<CR>", { desc = "Add cursor down" })
