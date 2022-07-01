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
augroup END

augroup CursorLine
    au!
    au VimEnter * setlocal cursorline
    au WinEnter * setlocal cursorline
    au BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]]