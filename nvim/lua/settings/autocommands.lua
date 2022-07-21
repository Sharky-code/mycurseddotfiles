vim.cmd [[
augroup MyColors
	autocmd!
	au ColorScheme * hi NvimTreeVertSplit guibg=bg
	au ColorScheme onenord,tokyonight,catppuccin hi NvimTreeVertSplit guibg=bg guifg=bg 

	au ColorScheme * hi NonText guifg=bg

	au ColorScheme * hi DiagnosticError guibg=bg
	au ColorScheme * hi DiagnosticHint guibg=bg
	au ColorScheme * hi DiagnosticSign guibg=bg
	au ColorScheme * hi DiagnosticWarn guibg=bg
	au ColorScheme * hi DiagnosticInfo guibg=bg
  au ColorScheme * hi! link SignColumn LineNr
  au ColorScheme * hi CursorLineNr guibg=bg

	au ColorScheme * syntax on

	au ColorScheme * lua require('plugins.feline').updateColor()
augroup END

augroup CursorLine
    au!
    au VimEnter * setlocal cursorline
    au WinEnter * setlocal cursorline
    au BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

au BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif

au FileType python nnoremap <buffer> <F2> :w \| :TermExec cmd=';python3 %' <CR>
au FileType cpp nnoremap <buffer> <F2> :w \| :TermExec cmd=';g++ -o %:r % ; ./%:r' <CR>
au FileType javascript nnoremap <buffer> <F2> :w \| :TermExec cmd=';node %' <CR>
au FileType lua nnoremap <buffer> <F2> :w \| :TermExec cmd=';lua %' <CR>

"autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()

" augroup __lsp_document_format
" 	autocmd!
 	"autocmd BufWritePre <buffer> :!echo hi
" 	autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()
" augroup END
]]
