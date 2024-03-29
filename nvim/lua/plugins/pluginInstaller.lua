require('packer').startup(function()
	use 'rose-pine/neovim'
	use 'LunarVim/onedarker.nvim'
	use { 'Everblush/everblush.nvim', as = 'everbblush' }
	use "rafamadriz/neon"
	use 'frenzyexists/aquarium-vim'
	use 'shaunsingh/moonlight.nvim'
	use 'shaunsingh/solarized.nvim'
	use 'savq/melange'
	use 'bluz71/vim-moonfly-colors'
	use 'EdenEast/nightfox.nvim'
	use 'bluz71/vim-nightfly-guicolors'
	use 'christianchiarulli/nvcode-color-schemes.vim'
	use 'romgrk/doom-one.vim'
	use 'projekt0n/github-nvim-theme'
	use 'gerardbm/vim-atomic'
	use 'danilo-augusto/vim-afterglow'
	use 'folke/tokyonight.nvim'
	use 'AlessandroYorba/Alduin'
	use 'tlhr/anderson.vim'
	use 'rmehri01/onenord.nvim'
	use 'arcticicestudio/nord-vim'
	use 'NLKNguyen/papercolor-theme'
	use 'doums/darcula'
	use 'sonph/onehalf'
	use 'sainnhe/gruvbox-material'
	use 'tadachs/kit.vim'
	use 'ayu-theme/ayu-vim'
	use 'sainnhe/everforest'
	use 'catppuccin/nvim'
	use 'dracula/vim'
	use 'Rigellute/shades-of-purple.vim'
	use 'tanvirtin/monokai.nvim'
	use 'tomasr/molokai'
	use 'haishanh/night-owl.vim'
	use 'pineapplegiant/spaceduck'
	use 'cormacrelf/vim-colors-github'
	use 'Rigellute/rigel'
	use 'jsit/toast.vim'
	use 'rafi/awesome-vim-colorschemes'
	use 'jnurmine/Zenburn'
	use 'preservim/vim-colors-pencil'
	use 'tyrannicaltoucan/vim-quantum'
	use 'ray-x/aurora'
	use 'jpo/vim-railscasts-theme'
	use 'm104/vim-config'
	use 'drewtempelmeyer/palenight.vim'
	use 'chriskempson/base16-vim'
	use 'Mofiqul/vscode.nvim'
	use 'jacoborus/tender.vim'
	use 'KeitaNakamura/neodark.vim'

	use 'noib3/nvim-cokeline'

	use 'terryma/vim-multiple-cursors'

	use 'lukas-reineke/indent-blankline.nvim'

	use 'wbthomason/packer.nvim'

	use 'LionC/nest.nvim'

	use 'nvim-lualine/lualine.nvim'
	use 'feline-nvim/feline.nvim'

	use 'nvim-treesitter/nvim-treesitter'
	use 'nvim-treesitter/playground'

	use 'kyazdani42/nvim-tree.lua'
	use 'kyazdani42/nvim-web-devicons'

	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use "kylechui/nvim-surround"
	use "hrsh7th/cmp-nvim-lsp-signature-help"

	use 'onsails/lspkind.nvim'
	use 'ray-x/lsp_signature.nvim'
	use "lukas-reineke/lsp-format.nvim"
	use 'nvim-lua/lsp-status.nvim'
	use 'simrat39/symbols-outline.nvim'
	--use 'folke/lsp-colors.nvim'
	--use 'kosayoda/nvim-lightbulb'
	--use "smjonas/inc-rename.nvim"
	-- use 'jubnzv/virtual-types.nvim'
	--
	-- 'ray-x/navigator.lua'
	-- 'ray-x/guihua.lua'

	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
	use 'folke/trouble.nvim'

	use "windwp/nvim-autopairs"

	use 'L3MON4D3/LuaSnip'

	use 'akinsho/toggleterm.nvim'

	use 'MunifTanjim/nui.nvim'

	use 'nvim-telescope/telescope.nvim'

	use 'nvim-lua/plenary.nvim'

	use 'phaazon/hop.nvim'

	use 'lewis6991/impatient.nvim'

	use 'norcalli/nvim-colorizer.lua'
	use 'folke/twilight.nvim'
	use 'xiyaowong/nvim-transparent'
	use 'rktjmp/lush.nvim'

	use 'kevinhwang91/nvim-ufo'
	use 'kevinhwang91/promise-async'

	use 'numToStr/Comment.nvim'

	use 'j-hui/fidget.nvim'

	use 'lewis6991/gitsigns.nvim'
	use 'dinhhuy258/git.nvim'

	use "max397574/better-escape.nvim"

	use "folke/zen-mode.nvim"

	use 'matze/vim-move'

	use 'goolord/alpha-nvim'

	use "folke/which-key.nvim"

	use "SmiteshP/nvim-navic"

	use "akinsho/bufferline.nvim"

	use 'xiyaowong/link-visitor.nvim'

	use 'abecodes/tabout.nvim'

	-- use 'RRethy/vim-illuminate'
	use 'p00f/nvim-ts-rainbow'

	use 'EvanQuan/vim-executioner' 

	use 'rcarriga/nvim-notify'

	use 'mfussenegger/nvim-dap'

  use 'Pocco81/dap-buddy.nvim'

	use 'mfussenegger/nvim-dap-python'

	use 'stevearc/aerial.nvim'

	use 'chrisbra/unicode.vim'
	
	use 'fgheng/winbar.nvim'

	use "SmiteshP/nvim-gps"

	use "xiyaowong/transparent.nvim"

end)
