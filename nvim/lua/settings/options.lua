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
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd('colo catppuccin')
vim.cmd('set fillchars=vert:\\▏,eob:\\ ')

vim.cmd [[
hi DiagnosticError guibg=bg
hi DiagnosticHint guibg=bg
hi DiagnosticSign guibg=bg
hi DiagnosticWarn guibg=bg
]]

-- vim.cmd[[
-- let asyncomplete_auto_completeopt = 0
-- set completeopt=menuone,noinsert,noselect,preview
-- ]]

vim.cmd("let g:move_key_modifier = 'C'")
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
end
