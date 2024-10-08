return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		{"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim"}
	},
	opts={

    default_component_configs = {
        icon = {
            folder_empty = "󰜌",
            folder_empty_open = "󰜌"
        },
        git_status = {
            symbols = {
                renamed = "󰁕",
                unstaged = "󰄱"
            }
        }
    },
    document_symbols = {
        kinds = {
            File = {
                icon = "󰈙",
                hl = "Tag"
            },
            Namespace = {
                icon = "󰌗",
                hl = "Include"
            },
            Package = {
                icon = "󰏖",
                hl = "Label"
            },
            Class = {
                icon = "󰌗",
                hl = "Include"
            },
            Property = {
                icon = "󰆧",
                hl = "@property"
            },
            Enum = {
                icon = "󰒻",
                hl = "@number"
            },
            Function = {
                icon = "󰊕",
                hl = "Function"
            },
            String = {
                icon = "󰀬",
                hl = "String"
            },
            Number = {
                icon = "󰎠",
                hl = "Number"
            },
            Array = {
                icon = "󰅪",
                hl = "Type"
            },
            Object = {
                icon = "󰅩",
                hl = "Type"
            },
            Key = {
                icon = "󰌋",
                hl = ""
            },
            Struct = {
                icon = "󰌗",
                hl = "Type"
            },
            Operator = {
                icon = "󰆕",
                hl = "Operator"
            },
            TypeParameter = {
                icon = "󰊄",
                hl = "Type"
            },
            StaticMethod = {
                icon = '󰠄 ',
                hl = 'Function'
            }
        }
    },
    -- Add this section only if you've configured source selector.
    source_selector = {
        sources = {{
            source = "filesystem",
            display_name = " 󰉓 Files "
        }, {
            source = "git_status",
            display_name = " 󰊢 Git "
        }}
    },
    filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false
    }
}
}
