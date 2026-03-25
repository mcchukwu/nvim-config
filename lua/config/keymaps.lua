local keymap = vim.keymap.set

-- Normal
keymap("n", "<leader>w", "<CMD>w<CR>")
keymap("n", "<leader>q", "<CMD>q<CR>")
keymap("n", "<leader><leader>", "<CMD>source<CR>")
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")
keymap("n", "<leader>Y", '"+Y', { desc = "Yank line to clipboard" })
keymap("n", "<leader>p", '"+p', { desc = "Paste from clipboard" })
keymap("n", "<leader>d", '"_d', { desc = "Delete to void register" })

-- Insert
keymap("i", "jk", "<C-c>")

-- Visual
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")
keymap("v", "<leader>y", '"+y', { desc = "Yank to clipboard" })
keymap("v", "<leader>p", '"+p', { desc = "Paste from clipboard (visual)" })
keymap("v", "<leader>d", '"_d', { desc = "Delete visual to void" })
