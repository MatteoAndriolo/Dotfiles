--require('rose-pine').setup({
--    disable_background = true
--})

require('catppuccin').setup({
    disable_background = true
})

function ColorMyPencils(color)
	color = color or "catppuccin-mocha'"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

-- ColorMyPencils()
-- color tokyonight theme at end of nvim
vim.cmd("colorscheme catppuccin")
