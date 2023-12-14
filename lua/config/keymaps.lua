-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move line up
keymap("n", "<A-Up>", ":move -2<CR>", opts)
keymap("i", "<A-Up>", "<Esc>:move -2<CR>i", opts)

-- Move line down
keymap("n", "<A-Down>", ":move +1<CR>", opts)
keymap("i", "<A-Down>", "<Esc>:move +1<CR>i", opts)
