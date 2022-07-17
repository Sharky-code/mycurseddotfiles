local options = {
  --signcolumn='number',
  signcolumn='yes',
	foldmethod='expr',
	foldexpr='nvim_treesitter#foldexpr()',
	laststatus = 3,
	nocompatible,
	swapfile=false,
	number=true,
	relativenumber,
	autoindent,
	scrolloff=5,
	cursorline=true,
	tabstop=2,
	shiftwidth=2,
	mouse='a',
	hidden=true,
	noshowmode,
	smartindent=true,
	foldlevel=20,
	showtabline=2,
	relativenumber=true,
	syntax='on',
	showmode=false,
	termguicolors=true
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
vim.cmd('set fillchars=vert:\\▏,eob:\\ ,horizup:\\─,vertleft:\\▏,vertright:\\▏,verthoriz:\\▏')

vim.cmd [[
hi DiagnosticError guibg=bg
hi DiagnosticHint guibg=bg
hi DiagnosticSign guibg=bg
hi DiagnosticWarn guibg=bg
hi DiagnosticInfo guibg=bg
]]

-- local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
--kitty can't render emojis well apparently
--one emoji and the entire thing is ruined and everything glitch out

for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
end
