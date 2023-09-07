require("core")
-- disable netrw completely
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.api.nvim_set_keymap('n',
    '<leader>f',
    [[<Cmd>lua require('formula_insert').insertFormula('<C-R>=input("Enter formula keyword: ")<CR>')<CR>]],
    { noremap = true, silent = true }
)

-- Define a keybinding to trigger the formula insertion using the loaded script
vim.api.nvim_set_keymap('n', '<leader>b', [[:lua require("custom.snippets").insertFormula()<CR>]], { noremap = true, silent = false })
