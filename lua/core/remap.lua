vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join but keep cursor in current position
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor in middle of page on up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep search terms in middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Keep yank when replace of on highlight string
-- asdfvim.keymap.set("x", "<leader>p", "\"_dp")

-- Keep system clipboard only to leader y
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+y")

vim.keymap.set("n", "<C-h>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-l>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<C-i>", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<C-,>", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

vim.keymap.set("n", "<F6>", ":set nu! rnu!<CR>")
vim.opt.pastetoggle = "<leader>p"

-- Splits navigation
vim.keymap.set("n", "<C-l>", "<C-w>l", {noremap = true, silent = true})
vim.keymap.set("n", "<C-h>", "<C-w>h", {noremap = true, silent = true})
