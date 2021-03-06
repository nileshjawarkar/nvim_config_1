vim.cmd [[packadd packer.nvim]]

require('packer').init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "single" }
		end,
	},
}

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
    use {'wbthomason/packer.nvim'}
    use {'joshdick/onedark.vim'}
	use {'kyazdani42/nvim-web-devicons'}
	use {'hoob3rt/lualine.nvim'}
	use {'vimwiki/vimwiki' }
 	use {'nvim-telescope/telescope.nvim',
		requires = {
			{'nvim-lua/plenary.nvim'}
		}
	}
    use {'kyazdani42/nvim-tree.lua'}
	use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
	use {'hrsh7th/nvim-cmp'}
	use {'saadparwaiz1/cmp_luasnip'}
	use {'L3MON4D3/LuaSnip'}
	use {'hrsh7th/cmp-buffer'}
	use {'hrsh7th/cmp-path'}
	use {'hrsh7th/cmp-cmdline'}
	use {'neovim/nvim-lspconfig',
		requires = {
			{'williamboman/nvim-lsp-installer'},
			{'hrsh7th/cmp-nvim-lsp'}
		}
	}
	use {'lewis6991/gitsigns.nvim'}
	use {"folke/which-key.nvim"}
end)

