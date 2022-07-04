require('plugins.pluginInstaller')


vim.cmd('colo catppuccin')

require('settings.options')
require('settings.mappings')
require('settings.autocommands')

local plugins = {
'alpha', 
'feline.feline', 
'toggleTerminal', 
'treesitter', 
'nvimtree', 
'cmp', 
'indentblankline', 
'lsp_signature', 
'autopair', 
'telescope', 
'hop', 
'colorizer', 
'impatient', 
'comment', 
'fidget', 
'gitsigns', 
'betteresc', 
'zenmode', 
'whichkey', 
'bufferline', 
'color', 
'other'
}

for x = 1, #plugins do
	local y = 'plugins.' .. plugins[x]
	require(y)
end

vim.cmd('syntax on')
vim.cmd('Gitsigns toggle_signs')
