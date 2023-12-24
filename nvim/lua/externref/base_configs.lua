local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.wo.number = true -- line numbering

-- mappings
vim.g.mapleader = " "
vim.keymap.set("n", "<leader><", vim.cmd.Ex, {noremap = true})

-- theme
vim.g.nord_disable_background = true
vim.g.nord_italic = false 
vim.g.nord_bold = false
vim.cmd[[colorscheme nord]]

-- harpoon mappings
vim.keymap.set("n", "<leader>+", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

-- neotree
vim.keymap.set("n","<leader>/",":NeoTreeShowToggle<CR>", {noremap = true})

	-- telescope mappings 
vim.keymap.set("n", "<leader>?", builtin.find_files, {})
vim.keymap.set("n", "<leader>grep", function()
    builtin.grep_string({
        search = vim.fn.input("Grep > ")
    });
end)
