return {
    -- Telescope (Fuzzy Finder)
    {
        'nvim-telescope/telescope.nvim',
        lazy = false,
        dependencies = {
            {'nvim-lua/plenary.nvim'},
        }
    },

    -- Nvim-treesitter
    {
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	build = ":TSUpdate",
    indent = { enable = true },
	config = function () 
   		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "go", "yaml", "javascript", "html" },
		          sync_install = false,
		          highlight = { enable = true },
		          indent = { enable = true },  
	        })
	    end
    },

   -- Tokyonight theme
    {
        'catppuccin/nvim',
	name = "catppuccin",
        lazy = false,
        priority = 1000,
        opts = { flavour = "latte" },
        config = function()
            vim.cmd([[colorscheme catppuccin]])
        end,
    },

    -- Neo-tree
    {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    },

    -- VimBeGood
    {
    	'ThePrimeagen/vim-be-good',
    },

    -- Lualine
    {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    },

    -- Harpoon
    {
        'ThePrimeagen/harpoon',
    },
}
