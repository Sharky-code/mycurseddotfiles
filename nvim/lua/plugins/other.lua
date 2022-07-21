-- https://github.com/yamatsum/nvim-cursorline
-- https://github.com/RRethy/vim-illuminate
-- https://github.com/rlane/pounce.nvim
require('link-visitor').setup{}
--require('tabout').setup{} -- doesn't work :(
--https://github.com/CRAG666/code_runner.nvim --i already have my autocommands lmaooo
require('zen-mode').setup{
	window = {
		options = {
			signcolumn = "no",
			number = true,
			relativenumber = true,
			list = false
		},
	},
	plugins = {
		twilight = {
			enabled = false --i hate twilight
		}
	}
}

require("Comment").setup{}

require("which-key").setup{}

require("nvim-navic").setup{
	--vscode icons but its really small :(
	 --  icons = {
		-- 	File = ' ',
		-- 	Module = ' ',
		-- 	Namespace = ' ',
		-- 	Package = ' ',
		-- 	Class = ' ',
		-- 	Method = ' ',
		-- 	Property = ' ',
		-- 	Field = ' ',
		-- 	Constructor = ' ',
		-- 	Enum = ' ',
		-- 	Interface = ' ',
		-- 	Function = ' ',
		-- 	Variable = ' ',
		-- 	Constant = ' ',
		-- 	String = ' ',
		-- 	Number = ' ',
		-- 	Boolean = ' ',
		-- 	Array = ' ',
		-- 	Object = ' ',
		-- 	Key = ' ',
		-- 	Null = ' ',
		-- 	EnumMember = ' ',
		-- 	Struct = ' ',
		-- 	Event = ' ',
		-- 	Operator = ' ',
		-- 	TypeParameter = ' '
		-- },
		highlight = false,
		separator = " > ",
		depth_limit = 0,
		depth_limit_indicator = "..",
}
