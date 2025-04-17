-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- For conciseness
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Save file
keymap.set("n", "<C-s>", "<cmd> w <CR>", opts)

-- Save file without auto-formatting
keymap.set("n", "<leader>sn", "<cmd>noautocmd w <CR>", opts)

-- Quit file
keymap.set("n", "<leader>qq", "<cmd>qa<cr>", opts)
keymap.set("n", "<C-q>", "<cmd> q <CR>", opts)

-- Delete single character without copying into register
keymap.set("n", "x", '"_x', opts)

-- Vertical scroll and center
keymap.set("n", "<C-d>", "<C-d>zz", opts)
keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- Find and center
keymap.set("n", "n", "nzzzv", opts)
keymap.set("n", "N", "Nzzzv", opts)

-- Identation
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- Clear highlights on search when pressing <Esc> in normal mode
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Keep last yanked when pasting
keymap.set("v", "p", '"_dP', opts)

-- Toggle line wrapping
keymap.set("n", "<leader>lw", "<cmd>set wrap!<CR>", opts)

-- Diagnostic keymaps
keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts)

-- Exit terminal mode in the builtin terminal
keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", opts)

-- Navigate between windows
keymap.set("n", "<C-h>", "<C-w><C-h>", opts)
keymap.set("n", "<C-l>", "<C-w><C-l>", opts)
keymap.set("n", "<C-j>", "<C-w><C-j>", opts)
keymap.set("n", "<C-k>", "<C-w><C-k>", opts)
