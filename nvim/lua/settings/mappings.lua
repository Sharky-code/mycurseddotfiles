local nest = require('nest')
nest.applyKeymaps {
	{"<F1>", ":HopAnywhere <CR>"},
	{"<F1><F2>", ":Gitsigns toggle_signs <CR>"},
	{"<F4>", ":Telescope <CR>"},
	{"<F5>", ":NvimTreeToggle <CR>"},
	{"<F6>", ":ToggleTerm <CR>"},

	{mode = "n",
		{"y", "\"+y"},
		{"Y", "\"+yy"},
		--{";", ":", options = {silent = false}},
		--{":", ";"},
		{"<Up>", "<C-w>k"},
		{"<Down>", "<C-w>j"},
		{"<Left>", "<C-w>h"},
		{"<Right>", "<C-w>l"},
		{"<Tab>", "za"},
		{"<Backspace>", "zc"},

		-- {"L", ":lua vim.lsp.buf.hover() <CR>"},
	},

	{mode = "v", {"y", "\"+y"} },
	{mode = "t",
		{"<C-K>", "<C-c><C-\\><C-n><C-w>k"},
		{"<Esc>", "<C-c><C-\\><C-n><C-w>k"},
		{"<C-J>", "<C-c><C-\\><C-n><C-w>j"},
		{"<C-H>", "<C-c><C-\\><C-n><C-w>h"},
		{"<C-L>", "<C-c><C-\\><C-n><C-w>l"},
	},
	--{mode = "i", {"jk", "<Esc>"}},
}
--[[
nnoremap <S-l> :TSHighlightCapturesUnderCursor <CR>

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
]]
