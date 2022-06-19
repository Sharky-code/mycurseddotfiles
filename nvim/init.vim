" Vim news:
" danymat/neogen stuff
" change the rainbow brackets to rainbow because it is really ugly (one
" bracket = white)
" onsails/diaglist.nvim
call plug#begin()
Plug 'projekt0n/github-nvim-theme'
Plug 'gerardbm/vim-atomic'
Plug 'danilo-augusto/vim-afterglow'
Plug 'folke/tokyonight.nvim'
Plug 'AlessandroYorba/Alduin'
Plug 'tlhr/anderson.vim'
Plug 'rmehri01/onenord.nvim'
Plug 'arcticicestudio/nord-vim'
Plug 'NLKNguyen/papercolor-theme' "the holy color theme
Plug 'https://github.com/rafi/awesome-vim-colorschemes' 
Plug 'doums/darcula'
Plug 'sonph/onehalf'
Plug 'sainnhe/gruvbox-material'
Plug 'tadachs/kit.vim' 
Plug 'ayu-theme/ayu-vim'
Plug 'sainnhe/everforest'
Plug 'catppuccin/nvim'
Plug 'dracula/vim'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'sickill/vim-monokai'
Plug 'tomasr/molokai'
Plug 'haishanh/night-owl.vim'
Plug 'pineapplegiant/spaceduck'
Plug 'cormacrelf/vim-colors-github'
Plug 'Rigellute/rigel'
Plug 'jsit/toast.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'jnurmine/Zenburn'
Plug 'preservim/vim-colors-pencil'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'ray-x/aurora'
Plug 'jpo/vim-railscasts-theme'
Plug 'm104/vim-config'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'chriskempson/base16-vim'
Plug 'Mofiqul/vscode.nvim'

"mods
Plug 'norcalli/nvim-colorizer.lua'

"Plug 'jiangmiao/auto-pairs'

Plug 'goolord/alpha-nvim'
Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'nvim-treesitter/nvim-treesitter'

Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

Plug 'declancm/cinnamon.nvim'

"Configure feline in your spare time. Ill use airline because I don't have to
"configure much of it
"Plug 'feline-nvim/feline.nvim'
Plug 'nvim-lualine/lualine.nvim'

Plug 'tpope/vim-fugitive'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'terryma/vim-multiple-cursors'

"Plug 'liuchengxu/vista.vim'

"Plug 'smjonas/inc-rename.nvim'
"Plug 'romgrk/barbar.nvim' "I dont use this because I can just open another
"tab in kitty

"Plug 'neoclide/coc.nvim'
"Plug 'pappasam/coc-jedi'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'

Plug 'jdhao/better-escape.vim'

"Plug 'Darazaki/indent-o-matic'

Plug 'akinsho/toggleterm.nvim'
Plug 'voldikss/vim-floaterm'

Plug 'MunifTanjim/nui.nvim'

Plug 'rstacruz/vim-closer'

Plug 'lewis6991/impatient.nvim'

Plug 'EvanQuan/vim-executioner'

Plug 'wbthomason/packer.nvim'
Plug 'neovim/nvim-lspconfig'

Plug 'folke/which-key.nvim'

Plug 'wfxr/minimap.vim'

Plug 'preservim/tagbar'

Plug 'Chiel92/vim-autoformat'

Plug 'akinsho/bufferline.nvim'

Plug 'blueyed/vim-diminactive'
Plug 'edkolev/tmuxline.vim'

Plug 'matze/vim-move'

Plug 'phaazon/hop.nvim'

Plug 'simrat39/symbols-outline.nvim'

Plug 'akinsho/git-conflict.nvim'

Plug 'lewis6991/gitsigns.nvim'

Plug 'windwp/nvim-ts-autotag'

Plug 'nvim-lua/lsp-status.nvim'

Plug 'ray-x/lsp_signature.nvim'

Plug 'glepnir/lspsaga.nvim'

Plug 'windwp/nvim-ts-autotag'

Plug 'p00f/nvim-ts-rainbow'

Plug 'nvim-treesitter/nvim-treesitter-textobjects'

Plug 'SmiteshP/nvim-gps'

Plug 'nvim-treesitter/playground'

Plug 'onsails/lspkind.nvim'

call plug#end()

"replace colortheme name with * if you want all colorthemes to apply to this
"setting
"
"catpuccing replaces the entire line in the nvim tree, which is what i want,
"and keeps the line in tagbar. 
"toknonight shows the bar.
"
"I'll try to make the background color deeper than the main background :(

"remove catpuccin from the first one if you are not using transparent
"background
augroup MyColors
	autocmd!
	"autocmd ColorScheme tokyonight,catppuccin hi VertSplit guibg=bg guifg=bg 
	autocmd ColorScheme * hi NonText guifg=bg
	autocmd ColorScheme eclipse hi NonText guibg=bg
	autocmd ColorScheme solarized8,solarized8_flat,solarized8_high,solarized8_low,github,afterglow,apprentice,eclipse hi VertSplit guibg=bg guifg=fg
augroup END

augroup CursorLine
    au!
    au VimEnter * setlocal cursorline
    au WinEnter * setlocal cursorline
    au BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

:colorscheme catppuccin

":set ruler
":set rulerformat=%50(%#Comment#%{undotree().save_cur}/%{undotree().save_last}%#Type#%m%#Normal#%=\ %l,%c%V\ %#Comment#%P%#Normal##%n%#Normal#%)
":set laststatus=0

:set laststatus=3
:set nocompatible
:set noswapfile
:set termguicolors
:set number
:set relativenumber
:set autoindent
:set scrolloff=5
":set cursorline
:set tabstop=2
:set shiftwidth=2
:set mouse=a
:set hidden
:set fillchars=eob:\ 
"set fillchars=fold:\ ,vert:\│,eob:\ ,msgsep:‾
"Idk how to change the background color of other widgets darker but i dont
"like the border
"Figure it out if you have time
"The command below works and is useful to make pretty
":highlight NvimTreeNormal guibg=#000000
:set noshowmode
":highlight StatusLineNC ctermfg=bg ctermbg=bg guibg=bg guifg=bg

"the command below can remove the lines between the vertical lines, but
"sometimes, the colorscheme doesn't give sidebar support, and there will be no
"color difference, so its best to keep it off. you can enable it when coding
"anyways. Also some colorschemes with darker background will have the lines
"dissapear.
":set fillchars+=vert:\ 
:syntax on

"Feline is more configurable. So if you didn't like the airline and wanted to
"change it. You should change it to feline
"┃ █       ●  t

"let g:airline_powerline_fonts = 1
"
"if !exists('g:airline_symbols')
"	let g:airline_symbols = {}
"endif
"
""let g:airline#extensions#tabline#enabled = 1
""let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
"
"" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'
"
"" airline symbols
"let g:airline_right_sep= ''
"let g:airline_left_alt_sep = ''
"let g:airline_left_sep= ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''


let bufferline = get(g:, 'bufferline', {})
let bufferline.clickable = v:true

let g:tagbar_width = 20

let g:move_key_modifier = 'C'

let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'method' ] ]
      \ },
      \ 'component_function': {
      \   'method': 'NearestMethodOrFunction'
      \ },
      \ }
lua << EOF

local view = require("nvim-tree.view")
--require('nvim-treesitter.configs').setup{ensure_installed = {"lua", "vim", "python"}, highlight = {enable = true}}
require('nvim-treesitter').setup()

require("nvim-treesitter.configs").setup {
  highlight = {},
  rainbow = {
    enable = true,
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
  },
	playground = {
	enable = true,
	disable = {},
	updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
	persist_queries = false, -- Whether the query persists across vim sessions
	keybindings = {
		toggle_query_editor = 'o',
		toggle_hl_groups = 'i',
		toggle_injected_languages = 't',
		toggle_anonymous_nodes = 'a',
		toggle_language_display = 'I',
		focus_language = 'f',
		unfocus_language = 'F',
		update = 'R',
		goto_node = '<cr>',
		show_help = '?',
	},
  },
  autotag = {
    enable = true,
  },
}
vim.opt.list = true
--vim.opt.listchars:append("space:⋅")

require('indent_blankline').setup {
	space_char_blankline = " ",
	show_current_context = true,
	--show_current_context_start = true,
	}

require('which-key').setup{ right_sep = 'right_filled'
}

require("nvim-tree").setup({
	diagnostics = {
		enable = true,
	},
	view = {
		width = 30,
		side = "left",
		mappings = {
			list = {
				{
					key = "<C-e>",
					action = "",
				},
				{
					key = "D",
					action = "remove",
				},
				{
					key = "d",
					action = "trash",
				},
			},
		},
	},
	filters = {
		dotfiles = false,
		custom = { ".git", "node_modules", ".cache" },
	},
	git = {
		enable = true,
		ignore = false,
	},
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
})

require('toggleterm').setup{
size = 5,
direction = 'float',
}

require('colorizer').setup()

require('hop').setup()

require("bufferline").setup{
 options = {
      buffer_close_icon = "",
      modified_icon = "",
      close_icon = "",
      show_close_icon = false,
      left_trunc_marker = " ",
      right_trunc_marker = " ",
      max_name_length = 14,
      max_prefix_length = 13,
      tab_size = 20,
      show_tab_indicators = true,
      enforce_regular_tabs = false,
      view = "multiwindow",
      show_buffer_close_icons = true,
			separator_style = {"",""},
      always_show_bufferline = true,
      diagnostics = false,
      themable = true,

      custom_areas = {
         right = function()
            return {
               { text = "%@Toggle_theme@" .. vim.g.toggle_theme_icon .. "%X" },
               { text = "%@Quit_vim@ %X" },
            }
         end,
      },

      custom_filter = function(buf_number)
         -- Func to filter out our managed/persistent split terms
         local present_type, type = pcall(function()
            return vim.api.nvim_buf_get_var(buf_number, "term_type")
         end)

         if present_type then
            if type == "vert" then
               return false
            elseif type == "hori" then
               return false
            end
            return true
         end

         return true
      end,
   },
}

	local lspkind = require('lspkind')
	local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
		formatting = {
			format = lspkind.cmp_format({
				mode = 'symbol', -- show only symbol annotations
				maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)

				-- The function below will be called before any actual modifications from lspkind
				-- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
				--before = function (entry, vim_item)
				-- ...
				--	return vim_item
				--end
				--vim_item.kind = lsp.presets.default[vim_item.kind]
				--vim_item.menu = ({
					--nvim_lsp = "[LSP]",
					--look = "[Dict]",
					--buffer = "[Buffer]",
				--})[entry.source.name]
				--vim_item.kind, vim_item.menu = vim_item.menu, vim_item.kind
			})
		},

		textobjects = {
			select = {
				      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
				},
			},
		},
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

require("nvim-gps").setup()

local gps = require("nvim-gps")

local lualine = require('lualine')

-- Color table for highlights
-- stylua: ignore
local colors = {
  bg       = '#202328',
  fg       = '#bbc2cf',
  yellow   = '#ECBE7B',
  cyan     = '#008080',
  darkblue = '#081633',
  green    = '#98be65',
  orange   = '#FF8800',
  violet   = '#a9a1e1',
  magenta  = '#c678dd',
  blue     = '#51afef',
  red      = '#ec5f67',
}

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand('%:p:h')
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

-- Config
local config = {
  options = {
    -- Disable sections and component separators
    component_separators = '',
    section_separators = '',
    theme = {
      -- We are going to use lualine_c an lualine_x as left and
      -- right section. Both are highlighted by c theme .  So we
      -- are just setting default looks o statusline
      normal = { c = { fg = colors.fg, bg = colors.bg } },
      inactive = { c = { fg = colors.fg, bg = colors.bg } },
    },
  },
  sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    -- These will be filled later
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x ot right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left {
  function()
    return '▊'
  end,
  color = { fg = colors.blue }, -- Sets highlighting of component
  padding = { left = 0, right = 1 }, -- We don't need space before this
}

ins_left {
  -- mode component
	'mode',
  color = function()
    -- auto change color according to neovims mode
    local mode_color = {
      n = colors.red,
      i = colors.green,
      v = colors.blue,
      [''] = colors.blue,
      V = colors.blue,
      c = colors.magenta,
      no = colors.red,
      s = colors.orange,
      S = colors.orange,
      [''] = colors.orange,
      ic = colors.yellow,
      R = colors.violet,
      Rv = colors.violet,
      cv = colors.red,
      ce = colors.red,
      r = colors.cyan,
      rm = colors.cyan,
      ['r?'] = colors.cyan,
      ['!'] = colors.red,
      t = colors.red,
    }
    return { bg = mode_color[vim.fn.mode()] , fg = '#000000', gui='bold'}
  end,
  padding = {left = 2, right = 2},
}

ins_left {
  -- filesize component
  'filesize',
  cond = conditions.buffer_not_empty,
}

ins_left {
  'filename',
  file_status = true, path = 1,
  cond = conditions.buffer_not_empty,
  color = { fg = colors.magenta, gui = 'bold' },
}

ins_left {
	function()
		if gps.is_available() then
			return gps.get_location()
		else
			return ''
		end
	end,
	}

ins_left {'location'}

ins_left { 'progress', color = { fg = colors.fg, gui = 'bold' } }

ins_left {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  symbols = { error = ' ', warn = ' ', info = ' ' },
  diagnostics_color = {
    color_error = { fg = colors.red },
    color_warn = { fg = colors.yellow },
    color_info = { fg = colors.cyan },
  },
}

-- Insert mid section. You can make any number of sections in neovim :)
-- for lualine it's any number greater then 2
ins_left {
  function()
    return '%='
  end,
}

ins_left {
  -- Lsp server name .
  function()
    local msg = 'No Active Lsp'
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then
      return msg
    end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
    return msg
  end,
  icon = ' LSP:',
  color = { fg = '#ffffff', gui = 'bold' },
}




-- Add components to right sections
ins_right {
  'o:encoding', -- option component same as &encoding in viml
  fmt = string.upper, -- I'm not sure why it's upper case either ;)
  cond = conditions.hide_in_width,
  color = { fg = colors.green, gui = 'bold' },
}

ins_right {
  'fileformat',
  fmt = string.upper,
  icons_enabled = false, -- I think icons are cool but Eviline doesn't have them. sigh
  color = { fg = colors.green, gui = 'bold' },
}

ins_right {
  'branch',
  icon = '',
  color = { fg = colors.violet, gui = 'bold' },
}

ins_right {
  'diff',
  -- Is it me or the symbol for modified us really weird
  symbols = { added = ' ', modified = '柳 ', removed = ' ' },
  diff_color = {
    added = { fg = colors.green },
    modified = { fg = colors.orange },
    removed = { fg = colors.red },
  },
  cond = conditions.hide_in_width,
}


-- Now don't forget to initialize lualine
lualine.setup(config)

require('lspconfig')['pyright'].setup{}

require('lspconfig')['grammarly'].setup{}
require('lspconfig')['ember'].setup{}
require('lspconfig')['clangd'].setup{}


require("nvim-lsp-installer").setup{}


require('alpha').setup(require'alpha.themes.dashboard'.config)

-- init.lua
vim.g.symbols_outline = {
    highlight_hovered_item = true,
    show_guides = true,
    auto_preview = true,
    position = 'right',
    relative_width = true,
    width = 25,
    auto_close = false,
    show_numbers = false,
    show_relative_numbers = false,
    show_symbol_details = true,
    preview_bg_highlight = 'Pmenu',
    keymaps = { -- These keymaps can be a string or a table for multiple keys
        close = {"<Esc>", "q"},
        goto_location = "<Cr>",
        focus_location = "o",
        hover_symbol = "<C-space>",
        toggle_preview = "K",
        rename_symbol = "r",
        code_actions = "a",
    },
    lsp_blacklist = {},
    symbol_blacklist = {},
    symbols = {
        File = {icon = "", hl = "TSURI"},
        Module = {icon = "", hl = "TSNamespace"},
        Namespace = {icon = "", hl = "TSNamespace"},
        Package = {icon = "", hl = "TSNamespace"},
        Class = {icon = "𝓒", hl = "TSType"},
        Method = {icon = "ƒ", hl = "TSMethod"},
        Property = {icon = "", hl = "TSMethod"},
        Field = {icon = "", hl = "TSField"},
        Constructor = {icon = "", hl = "TSConstructor"},
        Enum = {icon = "ℰ", hl = "TSType"},
        Interface = {icon = "ﰮ", hl = "TSType"},
        Function = {icon = "", hl = "TSFunction"},
        Variable = {icon = "", hl = "TSConstant"},
        Constant = {icon = "", hl = "TSConstant"},
        String = {icon = "𝓐", hl = "TSString"},
        Number = {icon = "#", hl = "TSNumber"},
        Boolean = {icon = "⊨", hl = "TSBoolean"},
        Array = {icon = "", hl = "TSConstant"},
        Object = {icon = "⦿", hl = "TSType"},
        Key = {icon = "🔐", hl = "TSType"},
        Null = {icon = "NULL", hl = "TSType"},
        EnumMember = {icon = "", hl = "TSField"},
        Struct = {icon = "𝓢", hl = "TSType"},
        Event = {icon = "🗲", hl = "TSType"},
        Operator = {icon = "+", hl = "TSOperator"},
        TypeParameter = {icon = "𝙏", hl = "TSParameter"}
    }
}

--require('cinnamon').setup()

require('git-conflict').setup{
  default_mappings = true, -- disable buffer local mapping created by this plugin
  disable_diagnostics = false, -- This will disable the diagnostics in a buffer whilst it is conflicted
  highlights = { -- They must have background color, otherwise the default color will be used
    incoming = 'DiffText',
    current = 'DiffAdd',
  }
}

--require('lsp-status').setup{}

require('lsp_signature').setup{}

require('nvim-ts-autotag').setup()


EOF


"try and make this apply to all tabs eg i open new tab that is python but i previous using c++, and it will change to python

"let filetype = expand("%:e") "Problem: Cannot see the current filename in tab
"because vimrc aren't updated when you open a tab

"elseif expand("%:e") == "cpp"



autocmd FileType python nnoremap <buffer> <F2> :w \| :TermExec cmd=';python3 %' <CR>
autocmd FileType cpp nnoremap <buffer> <F2> :w \| :TermExec cmd=';g++ -o %:r % ; ./%:r' <CR>
autocmd FileType javascript nnoremap <buffer> <F2> :w \| :TermExec cmd=';node %' <CR>

tnoremap <C-K> <C-\><C-n><C-w>k
tnoremap <Esc> <C-\><C-n><C-w>k
tnoremap <C-J> <C-\><C-n><C-w>j
tnoremap <C-H> <C-\><C-n><C-w>h
tnoremap <C-L> <C-\><C-n><C-w>l

nnoremap <Up> <C-w>k
nnoremap <Down> <C-w>j
nnoremap <Left> <C-w>h
nnoremap <Right> <C-w>l

nnoremap <S-l> :TSHighlightCapturesUnderCursor <CR>

vnoremap y "+y
nnoremap y "+y
nnoremap Y "+yy
"nnoremap p "+p

"tnoremap <Esc> <C-\><C-n>

"inoremap <Tab> <Esc>
map <F1> :HopAnywhere <CR>
map <F4> :Telescope <CR>
map <F3> :w \| :Executioner <CR>
map <F5> :NvimTreeToggle <CR>
map <F6> :ToggleTerm <CR>
map <F7> :TagbarToggle <CR>
map <F9> :lua require('gitsigns').detach() <CR>
map <F10> :lua require('gitsigns').setup() <CR>
map <F12> :TSPlaygroundToggle <CR>

nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>

nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>

map <F8> :MinimapToggle <CR>

"func! NvimGps() abort
"    return luaeval("require'nvim-gps'.is_available()") ?
"         \ luaeval("require'nvim-gps'.get_location()") : ''
"endf

"set statusline+=%{NvimGps()}
