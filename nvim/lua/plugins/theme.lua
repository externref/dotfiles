return {
    "shaunsingh/nord.nvim",
    lazy = false,
    priority = 1000,
    init = function()
	vim.g.nord_disable_background = true
	vim.g.nord_italic = false
	vim.g.nord_borders = true
	vim.g.nord_bold = false
	vim.cmd[[:colorscheme nord]]
    end,
}

