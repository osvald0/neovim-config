-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- For conciseness
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Leader key behavior
opts.desc = "Disable default spacebar action"
keymap.set({ "n", "v" }, "<Space>", "<Nop>", opts)

-- File operations
opts.desc = "Save file"
keymap.set("n", "<C-s>", "<cmd>w<CR>", opts)

opts.desc = "Save without formatting"
keymap.set("n", "<leader>sn", "<cmd>noautocmd w<CR>", opts)

opts.desc = "Quit all files"
keymap.set("n", "<leader>qq", "<cmd>qa<CR>", opts)

opts.desc = "Quit current window"
keymap.set("n", "<C-q>", "<cmd>q<CR>", opts)

-- Scrolling & search
opts.desc = "Scroll down and center"
keymap.set("n", "<C-d>", "<C-d>zz", opts)

opts.desc = "Scroll up and center"
keymap.set("n", "<C-u>", "<C-u>zz", opts)

opts.desc = "Find next and center"
keymap.set("n", "n", "nzzzv", opts)

opts.desc = "Find previous and center"
keymap.set("n", "N", "Nzzzv", opts)

-- Text editing
opts.desc = "Delete without yanking"
keymap.set("n", "x", '"_x', opts)

opts.desc = "Paste without overwriting register"
keymap.set("v", "p", '"_dP', opts)

opts.desc = "Indent left and keep selection"
keymap.set("v", "<", "<gv", opts)

opts.desc = "Indent right and keep selection"
keymap.set("v", ">", ">gv", opts)

-- UI / visual
opts.desc = "Clear search highlight"
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)

opts.desc = "Toggle line wrap"
keymap.set("n", "<leader>lw", "<cmd>set wrap!<CR>", opts)

-- Diagnostics & LSP
-- opts.desc = "Show buffer diagnostics"
-- keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)
--
-- opts.desc = "Show line diagnostics"
-- keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)

opts.desc = "Show hover documentation"
keymap.set("n", "K", vim.lsp.buf.hover, opts)

-- Terminal
opts.desc = "Exit terminal mode"
keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", opts)

-- Window navigation
opts.desc = "Move to left window"
keymap.set("n", "<C-h>", "<C-w>h", opts)

opts.desc = "Move to right window"
keymap.set("n", "<C-l>", "<C-w>l", opts)

opts.desc = "Move to lower window"
keymap.set("n", "<C-j>", "<C-w>j", opts)

opts.desc = "Move to upper window"
keymap.set("n", "<C-k>", "<C-w>k", opts)
