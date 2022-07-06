-- PROJECTS TO DO:
-- 	SOME COLOR THEMES DOESN'T SUPPORT INDENT BLANKLINE AND IT TURNS IT INTO THE BG COLOR WHICH MAKES IT INVISIBLE. DETECT IF ITS INVISIBLE AND CHANGE IT INTO A DARKER COLORED GRAY (NOT SO INTRUSIVE) AND APPLY IT WITH :hi
-- 	SOME COLORSCHEMES MAKE THE ERROR, WARNING, HINT BACKGROUND HIGHLIGHT AVAILABLE AGAIN. CHANGE THIS IN AUTOCMD
require('plugins.pluginInstaller')

vim.cmd('colo catppuccin')

require('settings.options')
require('settings.mappings')
require('settings.autocommands')

local plugins = {
'alpha',
'feline',
'toggleTerminal',
'treesitter',
'nvimtree',
'cmp',
'indentblankline',
'autopair',
'telescope',
'hop',
'colorizer',
'impatient',
'gitsigns',
'betteresc',
'bufferline',
'color',
'other',
'lsp.configs'
}

for x = 1, #plugins do
	local y = 'plugins.' .. plugins[x]
	require(y)
end

vim.cmd('syntax on')
vim.cmd('Gitsigns toggle_signs')
