return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
    config = {
	header = vim.g.dashboard_custom_header,
	footer = {

	},
      shortcut = {
        { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'Files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          desc = '  Mason',
          group = 'DiagnosticHint',
          action = "Mason",
          key = 'm',
        },
        {
          desc = '  dotfiles',
          group = 'Number',
          action = 'cd ~/.config/nvim',
          key = 'd',
        },
      },
    },
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
