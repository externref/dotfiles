return {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    init = function()
	vim.cmd[[:colorscheme cyberdream]]
    end,
    opts = {
	transparent=true,
	borderless_telescope=false,
	hide_fillchars=true

    }
}

