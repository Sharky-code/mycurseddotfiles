" Vim news:
" danymat/neogen stuff
" change the rainbow brackets to rainbow because it is really ugly (one
" bracket = white)
" onsails/diaglist.nvim
" go to line 100 to disable/enable illuminate
"  Plug 'mfussenegger/nvim-dap' "new stuff
call plug#begin()
Plug 'savq/melange'
Plug 'bluz71/vim-moonfly-colors'
Plug 'EdenEast/nightfox.nvim' 
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'christianchiarulli/nvcode-color-schemes.vim' "disable this if you want
Plug 'romgrk/doom-one.vim'
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
Plug 'tanvirtin/monokai.nvim'
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
Plug 'jacoborus/tender.vim'

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


Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

"Configure feline in your spare time. Ill use airline because I don't have to
"configure much of it
"Plug 'feline-nvim/feline.nvim'
Plug 'nvim-lualine/lualine.nvim'

Plug 'tpope/vim-fugitive'

Plug 'kevinhwang91/nvim-ufo'
Plug 'kevinhwang91/promise-async'

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

"Plug 'RRethy/vim-illuminate'
" I find this a bit annoying so turn this on if you want

Plug 'Darazaki/indent-o-matic'

Plug 'windwp/nvim-autopairs'

"vim autopairs not compatiable with the below plugin
"Plug 'rstacruz/vim-closer'
"Plug 'tpope/vim-endwise'

Plug 'akinsho/toggleterm.nvim'
Plug 'voldikss/vim-floaterm'

Plug 'MunifTanjim/nui.nvim'


Plug 'lewis6991/impatient.nvim'

Plug 'EvanQuan/vim-executioner'

Plug 'wbthomason/packer.nvim'
Plug 'neovim/nvim-lspconfig'

Plug 'folke/which-key.nvim'

Plug 'folke/trouble.nvim'

Plug 'wfxr/minimap.vim'

Plug 'preservim/tagbar'

Plug 'Chiel92/vim-autoformat'

"Plug 'akinsho/bufferline.nvim'
Plug 'noib3/nvim-cokeline'

"Plug 'blueyed/vim-diminactive'
Plug 'edkolev/tmuxline.vim'

Plug 'matze/vim-move'

Plug 'phaazon/hop.nvim'

Plug 'simrat39/symbols-outline.nvim'

Plug 'akinsho/git-conflict.nvim'

"Plug 'lewis6991/gitsigns.nvim'

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

Plug 'rktjmp/lush.nvim'

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

:set termguicolors
lua << EOF

local view = require("nvim-tree.view")
--require('nvim-treesitter.configs').setup{ensure_installed = {"lua", "vim", "python"}, highlight = {enable = true}}
require('nvim-treesitter').setup()

require("nvim-treesitter.configs").setup {
  highlight = {
      enable = true,
      disable = { "java" }
      },
  rainbow = {
    enable = false,
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
	open_on_setup = true,
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
float_opts = {
	border = 'curved',

	}
}

require('colorizer').setup()

require('hop').setup()

--[[
require("bufferline").setup{
     options = {
         offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left"
      }
    },
      show_close_icon = false,
      show_buffer_close_icons = false,
      color_icons = false,
      
      left_trunc_marker = " ",
      right_trunc_marker = " ",
      max_name_length = 14,
      max_prefix_length = 13,
      tab_size = 20,
      show_tab_indicators = false,
      enforce_regular_tabs = false,
      view = "multiwindow",
      show_buffer_close_icons = true,
			separator_style = {" "," "},
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
 
} ]]

	local lspkind = require('lspkind')
	local cmp = require'cmp'

	-- local border = {
	--     { "┏", "FloatBorder" },
	--     { "━", "FloatBorder" },
	--     { "┓", "FloatBorder" },
	--     { "┃", "FloatBorder" },
	--     { "┛", "FloatBorder" },
	--     { "━", "FloatBorder" },
	--     { "┗", "FloatBorder" },
	--     { "┃", "FloatBorder" },
	-- }

	-- local border = {
	-- 	{ "╔", "FloatBorder" },
	-- 	{ "═", "FloatBorder" },
	-- 	{ "╗", "FloatBorder" },
	-- 	{ "║", "FloatBorder" },
	-- 	{ "╝", "FloatBorder" },
	-- 	{ "═", "FloatBorder" },
	-- 	{ "╚", "FloatBorder" },
	-- 	{ "║", "FloatBorder" },
	-- }

    local kind_icons = {
      Text = "",
      Method = "m",
      Function = "",
      Constructor = "",
      Field = "",
      Variable = "",
      Class = "",
      Interface = "",
      Module = "",
      Property = "",
      Unit = "",
      Value = "",
      Enum = "",
      Keyword = "",
      Snippet = "",
      Color = "",
      File = "",
      Reference = "",
      Folder = "",
      EnumMember = "",
      Constant = "",
      Struct = "",
      Event = "",
      Operator = "",
      TypeParameter = "",
    }
  cmp.setup({
		window = {
			completion = {
				border = "rounded",
				scrollbar = '║',
				--winhighlight = 'Normal:CmpPmenu,FloatBorder:CmpPmenuBorder,CursorLine:PmenuSel,Search:None',
				winhighlight = 'Normal:CmpPmenu,FloatBorder:CmpPmenuBorder,CursorLine:PmenuSel,Search:None',
			}, --remove this if you don't like rounded borders
			documentation = {
					border = 'rounded',
					scrollbar = '║',
					winhighlight = 'Normal:CmpPmenu,FloatBorder:CmpPmenuBorder,CursorLine:PmenuSel,Search:None',
        },
		},
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
            --[[
			format = lspkind.cmp_format({
				mode = 'symbol_text', -- show only symbol annotations
				maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
                })
            ]]
            fields = { "kind", "abbr", "menu" },
            format = function(entry, vim_item)
                  -- Kind icons
                  vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
                  -- vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
                  vim_item.menu = ({
                    nvim_lsp = "[LSP]",
                    luasnip = "[Snippet]",
                    buffer = "[Buffer]",
                    path = "[Path]",
                  })[entry.source.name]
              return vim_item
        end,
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

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- The following example advertise capabilities to `clangd`.
require'lspconfig'.clangd.setup {
  capabilities = capabilities,
}

require("nvim-gps").setup()

local gps = require("nvim-gps")

--bg - 'none' for transparent background

local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

local hide_in_width = function()
	return vim.fn.winwidth(0) > 80
end

local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn" },
	symbols = { error = " ", warn = " " },
	colored = false,
	update_in_insert = false,
	always_visible = true,
}

local diff = {
	"diff",
	colored = false,
	symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
  cond = hide_in_width
}

local mode = {
	"mode",
	fmt = function(str)
		return str
	end,
}


local branch = {
	"branch",
	icons_enabled = true,
	icon = "",
}

local objectStatus = {
    function()
        if gps.is_available() then
			return gps.get_location()
		else
			return ''
		end
    end,
}

local lspStatus = {
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
  color = { fg = 'black', gui = 'bold' },

}


local spaces = function()
	return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
end

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = { "alpha", "dashboard", "NvimTree", "Outline" },
		always_divide_middle = true,
	},
	sections = {
		lualine_a = { branch, diagnostics },
		lualine_b = { mode, },
		lualine_c = {objectStatus },
		-- lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_x = { diff, spaces, "encoding", 'filetype'},
        lualine_y = { "location" },
		lualine_z = { "progress", lspStatus},
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = {},
})

--require('lspconfig').setup{}

require("nvim-lsp-installer").setup{}

local function lsp_keymaps()
  local opts = { noremap = true, silent = true }
  vim.api.nvim_buf_set_keymap(0, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  vim.api.nvim_buf_set_keymap(0, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  vim.api.nvim_buf_set_keymap(0, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  vim.api.nvim_buf_set_keymap(0, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  vim.api.nvim_buf_set_keymap(0, "n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
  vim.api.nvim_buf_set_keymap(0, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
  vim.api.nvim_buf_set_keymap(0, "n", "[d", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', opts)
  vim.api.nvim_buf_set_keymap(0, "n", "]d", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', opts)
  vim.api.nvim_buf_set_keymap(0, "n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
end


vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
border = "rounded",
focusable = false,
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
border = "rounded",
})


local lspStuff = {"pyright", "grammarly", "ember", "clangd", "vimls", "sumneko_lua", "html"}

for browhatt = 1, #lspStuff do
    local opts = { lsp_keymaps() }
    require('lspconfig')[lspStuff[browhatt]].setup{
    opts,
    }
end



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

--require('cinnamon').setup{}

require('git-conflict').setup{
  default_mappings = true, -- disable buffer local mapping created by this plugin
  disable_diagnostics = false, -- This will disable the diagnostics in a buffer whilst it is conflicted
  highlights = { -- They must have background color, otherwise the default color will be used
    incoming = 'DiffText',
    current = 'DiffAdd',
  }
}

--require('lsp-status').setup{}

require('lsp_signature').setup{
    floating_window = false,
    handler_opts = {
        border = "rounded",
    }
}

require('nvim-ts-autotag').setup{}

require("nvim-autopairs").setup{}

require('ufo').setup{}

vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]

local get_hex = require('cokeline/utils').get_hex


local get_hex = require('cokeline/utils').get_hex

require('cokeline').setup({
  default_hl = {
    fg = function(buffer)
      return
        buffer.is_focused
        --and get_hex('Normal', 'fg') or get_hex('Comment', 'fg')
        and get_hex('Normal', 'bg') or get_hex('Comment', 'bg')
    end,
    bg = function(buffer)
      return
      buffer.is_focused
      and get_hex('Normal', 'fg')
      or get_hex('ColorColumn', 'bg')
    end
    --bg = 'NONE',
  },

  sidebar = {
    filetype = 'NvimTree',
    components = {
      {
        text = '  [  FILE EXPLORER  ]',
        fg = yellow,
        bg = bg,
        --bg = get_hex('NvimTreeNormal', 'bg'),
        style = 'bold',
      },
    }
  },

  components = {
    {
      text = ' [ '
    },
    {
      text = function(buffer) return buffer.filename end,
      style = function(buffer) return buffer.is_focused and 'bold' or nil end,
    },
    
    {
      text = ' ] ',
    }
  },
})

--[[
require('lspsaga').init_lsp_saga {   
    border_style = 'double',
    error_sign = '', -- 
    warn_sign = '',
    hint_sign = '',
    infor_sign = '',
}
]]

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
end

require("trouble").setup {}

--  local signs = {
--    { name = "DiagnosticSignError", text = "" },
--    { name = "DiagnosticSignWarn", text = "" },
--    { name = "DiagnosticSignHint", text = "" },
--    { name = "DiagnosticSignInfo", text = "" },
--  }

  for _, sign in ipairs(signs) do
    vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
  end

  local config = {
    -- disable virtual text
    virtual_text = false,
    -- show signs
    signs = {
      active = signs,
    },
    update_in_insert = true,
    underline = true,
    severity_sort = true,
    float = {
      focusable = false,
      style = "minimal",
      border = "rounded",
      source = "always",
      header = "",
      prefix = "",
    },
  }
  vim.diagnostic.config(config)
EOF

augroup CursorLine
    au!
    au VimEnter * setlocal cursorline
    au WinEnter * setlocal cursorline
    au BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif

"autocmd WinNew * fillchars+=vert:\▏
"FINALLY FOUND THIS HOLY CHARACTER


:colorscheme catppuccin

":set ruler
":set rulerformat=%50(%#Comment#%{undotree().save_cur}/%{undotree().save_last}%#Type#%m%#Normal#%=\ %l,%c%V\ %#Comment#%P%#Normal##%n%#Normal#%)
":set laststatus=0

:set signcolumn=yes
:set foldlevel=20
:set foldmethod=expr
:set foldexpr=nvim_treesitter#foldexpr()
:set laststatus=3
:set nocompatible
:set noswapfile
:set number
:set relativenumber
:set autoindent
:set scrolloff=5
":set cursorline
:set tabstop=2
:set shiftwidth=2
:set mouse=a
:set hidden
"FINALLY FOUND THIS HOLY CHARACTER

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

"FINALLY FOUND THIS HOLY CHARACTER

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


"try and make this apply to all tabs eg i open new tab that is python but i previous using c++, and it will change to python

"let filetype = expand("%:e") "Problem: Cannot see the current filename in tab
"because vimrc aren't updated when you open a tab

"elseif expand("%:e") == "cpp"

autocmd FileType python nnoremap <buffer> <F2> :w \| :TermExec cmd=';python3 %' <CR>
autocmd FileType cpp nnoremap <buffer> <F2> :w \| :TermExec cmd=';g++ -o %:r % ; ./%:r' <CR>
autocmd FileType javascript nnoremap <buffer> <F2> :w \| :TermExec cmd=';node %' <CR>
autocmd FileType lua nnoremap <buffer> <F2> :w \| :TermExec cmd=';lua %' <CR>

tnoremap <C-K> <C-c><C-\><C-n><C-w>k
tnoremap <Esc> <C-c><C-\><C-n><C-w>k
tnoremap <C-J> <C-c><C-\><C-n><C-w>j
tnoremap <C-H> <C-c><C-\><C-n><C-w>h
tnoremap <C-L> <C-c><C-\><C-n><C-w>l

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
map <F1><F2> :lua vim.o.foldcolumn = '0' <CR>
map <F5> :NvimTreeToggle <CR>
map <F6> :ToggleTerm <CR>
map <F12> :TSPlaygroundToggle <CR>
map <F7> :TagbarToggle <CR>
map <F8> :MinimapToggle <CR>
map <F2><F1> :lua vim.o.foldcolumn = '1' <CR>


"nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
"vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>

"nnoremap <silent><leader>ca :Lspsaga code_action<CR>
"vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>

nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
nnoremap <silent> gh :Lspsaga lsp_finder<CR>

nnoremap <Tab> za
nnoremap <Backspace> zc


"func! NvimGps() abort
"    return luaeval("require'nvim-gps'.is_available()") ?
"         \ luaeval("require'nvim-gps'.get_location()") : ''
"endf

"set statusline+=%{NvimGps()}

:set fillchars+=vert:\▏
"FINALLY FOUND THIS HOLY CHARACTER
"
augroup MyColors
	autocmd!
	"autocmd ColorScheme tokyonight,catppuccin hi VertSplit guibg=bg guifg=bg 
	autocmd ColorScheme * hi NonText guifg=bg
	autocmd ColorScheme eclipse hi NonText guibg=bg
	autocmd ColorScheme solarized8,solarized8_flat,solarized8_high,solarized8_low,github,afterglow,apprentice,eclipse hi VertSplit guibg=bg guifg=fg
	"autocmd ColorScheme * set fillchars+=vert:\▏
	autocmd ColorScheme dracula set fillchars+=vert:\│
	autocmd ColorScheme nightfox set fillchars+=vert:\ 
augroup END

hi DiagnosticError guibg=bg
hi DiagnosticHint guibg=bg
hi DiagnosticSign guibg=bg
hi DiagnosticWarn guibg=bg
"
"hi DiagnosticSignHint guibg=bg
"hi DiagnosticSignInfo guibg=bg
"hi DiagnosticSignWarn guibg=bg
"hi DiagnosticSignError guibg=bg

syntax on
