-- vim.cmd[[
-- augroup MyColors
-- 	au ColorScheme * lua vim.cmd('hi DiagnosticError guibg=' .. string.format("#%06x", vim.api.nvim_get_hl_by_name("SignColumn", true).background))
-- 	au ColorScheme * lua vim.cmd('hi DiagnosticHint guibg=' .. string.format("#%06x", vim.api.nvim_get_hl_by_name("SignColumn", true).background))
-- 	au ColorScheme * lua vim.cmd('hi DiagnosticSign guibg=' .. string.format("#%06x", vim.api.nvim_get_hl_by_name("SignColumn", true).background))
-- 	au ColorScheme * lua vim.cmd('hi DiagnosticWarn guibg=' .. string.format("#%06x", vim.api.nvim_get_hl_by_name("SignColumn", true).background))
-- augroup END
-- ]]

vim.cmd [[
augroup MyColors
	autocmd!
	"autocmd ColorScheme tokyonight,catppuccin hi VertSplit guibg=bg guifg=bg 
	autocmd ColorScheme * hi NonText guifg=bg
	autocmd ColorScheme eclipse hi NonText guibg=bg
	autocmd ColorScheme solarized8,solarized8_flat,solarized8_high,solarized8_low,github,afterglow,apprentice,eclipse hi VertSplit guibg=bg guifg=fg
	"autocmd ColorScheme * set fillchars+=vert:\▏
	autocmd ColorScheme dracula set fillchars+=vert:\│
	autocmd ColorScheme nightfox set fillchars+=vert:\ 
	autocmd ColorScheme * syntax on
	au ColorScheme * lua require('plugins.feline').updateColor()

	"au ColorScheme * hi! link DiagnosticError SignColumn
	"au ColorScheme * hi DiagnosticError guifg=red

	"au ColorScheme * hi! link DiagnosticHint SignColumn
	"au ColorScheme * hi DiagnosticHint guifg=blue "cyan
	
	"au ColorScheme * hi! link DiagnosticSign SignColumn
	"au ColorScheme * hi DiagnosticSign guifg=white
	
	"au ColorScheme * hi! link DiagnosticWarn SignColumn
	"au ColorScheme * hi DiagnosticWarn guifg=orange


	"idk how to link just bg to something currently so imma just 

augroup END

augroup CursorLine
    au!
    au VimEnter * setlocal cursorline
    au WinEnter * setlocal cursorline
    au BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif

autocmd FileType python nnoremap <buffer> <F2> :w \| :TermExec cmd=';python3 %' <CR>
autocmd FileType cpp nnoremap <buffer> <F2> :w \| :TermExec cmd=';g++ -o %:r % ; ./%:r' <CR>
autocmd FileType javascript nnoremap <buffer> <F2> :w \| :TermExec cmd=';node %' <CR>
autocmd FileType lua nnoremap <buffer> <F2> :w \| :TermExec cmd=';lua %' <CR>

"autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()

" augroup __lsp_document_format
" 	autocmd!
 	"autocmd BufWritePre <buffer> :!echo hi
" 	autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()
" augroup END

]]
