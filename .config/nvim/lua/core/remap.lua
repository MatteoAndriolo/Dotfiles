vim.g.mapleader = " "
--------------------------------------------------------------------------------
-- MOVEMENTS
--------------------------------------------------------------------------------
---------- TEXT ----------------------------------------------------------------
-- Shift lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Bring lower line at the end of current
vim.keymap.set("n", "J", "mzJ`z")

---------- PAGE ----------------------------------------------------------------
-- Go to end or beginning of page
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- locations/bookmarks positions
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- replace all word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

---------- BUFFERS ------------------------------------------------------------
vim.keymap.set("n", "<leader>bn", "<cmd>bnext<CR>")


--------------------------------------------------------------------------------
-- UTILS
--------------------------------------------------------------------------------
-- open explorer
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)vim.cmd
-- because netrw is disabled Ex does not works
-- replaced by this command inside nvim-tree
-- vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>")

-- TERMINAL
vim.keymap.set("n", "<leader>T", "<cmd>lcd %:p:h<CR>:vs<CR><C-w><C-w>:set nonu<CR>:te<CR>i")
vim.keymap.set("n", "<leader>t", "<cmd>lcd %:p:h<CR>:sp<CR><C-w><C-w>:set nonu<CR>:te<CR>i")

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- quick fixes
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- open nvim config
-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/core/packer.lua<CR>");

-- source this file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

--------------------------------------------------------------------------------
-- FUN
--------------------------------------------------------------------------------
-- make it rain
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
