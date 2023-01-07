local M = {}

vim.cmd [[
" autocmd BufEnter * redraw | echo @% =~ '^\/.*$' ? @% : './' . @%

hi! link NvimTreeStatusLineNC NormalNC
hi! link NvimTreeStatusLineNC Normal

hi! link TelescopeNormal StatusLineNC
hi! link TelescopeBorder StatusLineNC

augroup MyColors
	autocmd!
	au ColorScheme onenord,tokyonight,catppuccin hi NvimTreeVertSplit guibg=bg guifg=bg 

	au ColorScheme * hi NonText guifg=bg

	au ColorScheme PaperColor,OceanicNext,OceanicNextLight hi Vertsplit guifg=fg
	au ColorScheme * hi DiagnosticError guibg=bg
	au ColorScheme * hi DiagnosticHint guibg=bg
	au ColorScheme * hi DiagnosticSign guibg=bg
	au ColorScheme * hi DiagnosticWarn guibg=bg
	au ColorScheme * hi DiagnosticInfo guibg=bg
  au ColorScheme * hi! link SignColumn LineNr
  au ColorScheme * hi CursorLineNr guibg=bg
	au ColorScheme * hi LineNr guibg=bg
	au ColorScheme * hi CursorLineNr guibg=bg
	au ColorScheme * hi VertSplit guibg=bg gui=NONE
	" au ColorScheme * hi! link Normal NormalNC

	au ColorScheme * syntax on

	au ColorScheme * lua require('plugins.feline').updateColor()
	au ColorScheme * hi! link NvimTreeStatusLineNC Normal
	au ColorScheme * hi! link NvimTreeStatusLineNC NormalNC
	au ColorScheme * hi! link TelescopeNormal StatusLineNC
	au ColorScheme * hi! link TelescopeBorder StatusLineNC


	
augroup END

augroup CursorLine
    au!
    au VimEnter * setlocal cursorline
    au WinEnter * setlocal cursorline
    au BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

augroup FileStuff
	autocmd!
	au FileType NvimTree setlocal signcolumn=no
	" au FileType SymbolsOutline set signcolumn=no
augroup END

" au BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
" au FileType python lua nnooremap <buffer> <F2> echo @% <CR>
"autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()

" augroup __lsp_document_format
" 	autocmd!
 	"autocmd BufWritePre <buffer> :!echo hi
" 	autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()
" augroup END
"au FileType python nnoremap <buffer> <F1> :w \| :TermExec cmd=';expand('%');python3 %' <CR>
"au FileType cpp nnoremap <buffer> <F1> :w \| :TermExec cmd=';g++ -o %:r % ; ./%:r' <CR>
"au FileType cpp nnoremap <buffer> <F1> :w \| :TermExec cmd=';g++ -std=c++20 -o %:r % ; ./%:r' <CR>
"au FileType javascript nnoremap <buffer> <F1> :w \| :TermExec cmd=';node %' <CR>
"au FileType lua nnoremap <buffer> <F1> :w \| :TermExec cmd=';lua %' <CR>
]]

-- local y = string.gsub(vim.fn.fnamemodify(vim.fn.expand("%:p"), ":~:"), " ", "\\\\ ")
-- local x = string.gsub(
-- string.format([[
-- au FileType,TabNew python nnoremap <buffer> <F1> :w \| :TermExec cmd=';python3 ?' <CR>
-- au FileType lua nnoremap <buffer> <F1> :w \| :TermExec cmd=';lua ?' <CR> au FileType cpp nnoremap <buffer> <F1> :w \| :TermExec cmd=';g++ -std=c++20 -o %s ? ; ./%s' <CR>
-- ]], vim.fn.expand("%:r"), vim.fn.expand("%:r"))
-- , "?", y)
-- vim.cmd(x)

-- print(x)
-- print(y)
-- print(vim.fn.expand("%:r"))

-- M.updateFile = function() 
-- 	local y = string.gsub(vim.fn.fnamemodify(vim.fn.expand("%:p"), ":~:"), " ", "\\\\ ")
-- 	local x = string.gsub(
-- 	string.format([[
-- 	au FileType python nnoremap <buffer> <F1> :w \| :TermExec cmd=';python3 ?' <CR>
-- 	au FileType lua nnoremap <buffer> <F1> :w \| :TermExec cmd=';lua ?' <CR>
-- 	au FileType cpp nnoremap <buffer> <F1> :w \| :TermExec cmd=';g++ -std=c++20 -o %s ? ; ./%s' <CR>
-- 	]], vim.fn.expand("%:r"), vim.fn.expand("%:r"))
-- 	, "?", y)
-- 	vim.cmd(x)
-- end
return M
