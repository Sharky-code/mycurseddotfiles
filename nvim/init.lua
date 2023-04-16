-- PROJECTS TO DO:
-- 	SOME COLOR THEMES DOESN'T SUPPORT INDENT BLANKLINE AND IT TURNS IT INTO THE BG COLOR WHICH MAKES IT INVISIBLE. DETECT IF ITS INVISIBLE AND CHANGE IT INTO A DARKER COLORED GRAY (NOT SO INTRUSIVE) AND APPLY IT WITH :hi
-- 	SOME COLORSCHEMES MAKE THE ERROR, WARNING, HINT BACKGROUND HIGHLIGHT AVAILABLE AGAIN. CHANGE THIS IN AUTOCMD

local colorscheme = 'nightfox'

require('plugins.pluginInstaller')

vim.cmd('colo ' .. colorscheme)

require('settings.options')
require('settings.mappings')
require('settings.autocommands')


local plugins = {
'indentblankline',
'alpha',
-- 'lualine',
'toggleTerminal',
'nvimtree',
'cmp',
'autopair',
'telescope',
'hop',
'colorizer',
'impatient',
'git',
'betteresc',
'bufferline',
-- 'cokeline',
'color',
'other',
'lsp.configs',
'treesitter',
'feline',
}

for x = 1, #plugins do
	local y = 'plugins.' .. plugins[x]
	require(y)
end

-- vim.cmd('syntax on')
vim.cmd('Gitsigns toggle_signs')

local winbar_filetype_exclude = {
  "help",
  "startify",
  "dashboard",
  "packer",
  "neogitstatus",
  "NvimTree",
  "Trouble",
  "alpha",
  "lir",
  "Outline",
  "spectre_panel",
  "toggleterm",
}

vim.cmd('colo ' .. colorscheme)
