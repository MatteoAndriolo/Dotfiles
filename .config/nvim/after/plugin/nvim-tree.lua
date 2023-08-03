-- set termguicolors
vim.o.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
    side = "left",
    --auto_resize = true,
  },
  filters = {
    dotfiles = true,
    custom = { ".git", "node_modules", ".cache", ".gitignore"},
  }
})

vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>")
