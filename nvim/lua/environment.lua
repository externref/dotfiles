require("config.lsp")
local h_ui = require("harpoon.ui")
local h_mark = require("harpoon.mark")
local t_builtin = require("telescope.builtin")

vim.wo.number = true
vim.cmd[[set shiftwidth=4]]

-- key maps
vim.keymap.set("n", "<C-t>", ":ToggleTerm direction=float<CR>") -- terminal
vim.keymap.set("n", "<leader><", vim.cmd.Ex, {noremap = true}) -- navback
vim.keymap.set("n","<leader>/",":Neotree toggle=true<CR>") -- neotree
vim.keymap.set("n", "<C-a>", h_mark.add_file, {noremap=true}) -- add file to harpooni
vim.keymap.set("n", "<C-e>", h_ui.toggle_quick_menu) -- open harpoon menu
vim.keymap.set("n", "<leader>?", t_builtin.find_files, {}) -- find telescope file
vim.keymap.set("n", "<leader>s", function() -- telescope grep
    t_builtin.grep_string({
	search = vim.fn.input("Grep > ")
    }, {noremap=true});
end)

vim.g.dashboard_custom_header={
    "                      █████                                                        ██████  ",
    "                      ░░███                                                        ███░░███",
    "  ██████  █████ █████ ███████    ██████  ████████  ████████   ████████   ██████   ░███ ░░░ ",
    " ███░░███░░███ ░░███ ░░░███░    ███░░███░░███░░███░░███░░███ ░░███░░███ ███░░███ ███████   ",
    "░███████  ░░░█████░    ░███    ░███████  ░███ ░░░  ░███ ░███  ░███ ░░░ ░███████ ░░░███░    ",
    "░███░░░    ███░░░███   ░███ ███░███░░░   ░███      ░███ ░███  ░███     ░███░░░    ░███     ",
    "░░██████  █████ █████  ░░█████ ░░██████  █████     ████ █████ █████    ░░██████   █████    ",
    " ░░░░░░  ░░░░░ ░░░░░    ░░░░░   ░░░░░░  ░░░░░     ░░░░ ░░░░░ ░░░░░      ░░░░░░   ░░░░░     ",
    "", "Welcome to neovim." , os.date('%A, %B %d %Y at %I:%M:%S %p'), ""
}
