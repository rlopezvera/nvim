-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- ly required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
		-- Packer can manage itself
		use 'wbthomason/packer.nvim'
		use "rebelot/kanagawa.nvim"
			use {
			'nvim-telescope/telescope.nvim', tag = '0.1.1',
			-- or                            , branch = '0.1.x',
			requires = { { 'nvim-lua/plenary.nvim' } }
		}
		use "prisma/vim-prisma"

		use {
			"folke/todo-comments.nvim",
			requires = "nvim-lua/plenary.nvim",
			config = function()
				require("todo-comments").setup {
					-- your configuration comes here
					-- or leave it empty to use the default settings
					0 -- refer to the configuration section below
				}
			end
		}
		use {
			'numToStr/Comment.nvim',
			config = function()
				require('Comment').setup()
			end
		}
		use {
			"windwp/nvim-autopairs",
			config = function() require("nvim-autopairs").setup {} end
		}

		use {
			'nvim-treesitter/nvim-treesitter',
			run = function()
				local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
				ts_update()
			end, }

		use({
			'rose-pine/neovim',
			as = 'rose-pine',
			config = function()
				require("rose-pine").setup()
				vim.cmd('colorscheme rose-pine')
			end
		})
		use("navarasu/onedark.nvim")

		use('github/copilot.vim')
		use('sheerun/vim-polyglot')


		use('theprimeagen/harpoon')
		use('tpope/vim-fugitive')
		use {
			'VonHeikemen/lsp-zero.nvim',
			branch = 'v1.x',
			requires = {
				-- LSP Support
				{ 'neovim/nvim-lspconfig' }, -- Required
				{ 'williamboman/mason.nvim' }, -- Optional
				{ 'williamboman/mason-lspconfig.nvim' }, -- Optional

				-- Autocompletion
				{ 'hrsh7th/nvim-cmp' }, -- Required
				{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
				{ 'hrsh7th/cmp-buffer' }, -- Optional
				{ 'hrsh7th/cmp-path' }, -- Optional
				{ 'saadparwaiz1/cmp_luasnip' }, -- Optional
				{ 'hrsh7th/cmp-nvim-lua' }, -- Optional

				-- Snippets
				{ 'L3MON4D3/LuaSnip' }, -- Required
				{ 'rafamadriz/friendly-snippets' }, -- Optional
			}
		}


		use("folke/zen-mode.nvim")
		use {
			"folke/trouble.nvim",
			-- requires = "nvim-tree/nvim-web-devicons",
			config = function()
				require("trouble").setup {
					-- your configuration comes here
					-- or leave it empty to use the default settings
					-- refer to the configuration section below
				}
			end
		}
	end)
