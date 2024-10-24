return {
    {'nvim-treesitter/nvim-treesitter',
    config = function ()
	vim.cmd[[:TSUpdate]]
    end}, {
    'm4xshen/autoclose.nvim', opts={}
}, {
    'nvim-lualine/lualine.nvim', opts={
	options = { theme  = "nord", extensions={"neo-tree"}}
    }
},
{'akinsho/bufferline.nvim', config=function ()
    local highlights = require("nord").bufferline.highlights({
	italic = true,
	bold = true,
    })

    require("bufferline").setup{options = {
	separator_style = "thin",
    },highlights= highlights}
end},
{'akinsho/toggleterm.nvim', version = "*",
config = function ()
    function _G.set_terminal_keymaps()
	local opts = {buffer = 0}
	vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
	vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
	vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
	vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
	vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
	vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
	vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
    end

    -- if you only want these mappings for toggle term use term://*toggleterm#* instead
    vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
    require("toggleterm").setup()
end
  }, {
      "ThePrimeagen/harpoon"
  }, {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.4',
      dependencies = {{'nvim-lua/plenary.nvim'}}
  }
}
