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
		highlight = true,
		separator = "  ",
		depth_limit = 0,
		depth_limit_indicator = "..",
}
-- vim.api.nvim_set_hl(0, "NavicIconsFile",          {default = true, fg = "#ff5050"})
-- vim.api.nvim_set_hl(0, "NavicIconsModule",        {default = true, fg = "#660000"})
-- vim.api.nvim_set_hl(0, "NavicIconsNamespace",     {default = true, fg = "#ff6600"})
-- vim.api.nvim_set_hl(0, "NavicIconsPackage",       {default = true, fg = "#ffa366"})
-- vim.api.nvim_set_hl(0, "NavicIconsClass",         {default = true, fg = "#00ff00"})
-- vim.api.nvim_set_hl(0, "NavicIconsMethod",        {default = true, fg = "#008000"})
-- vim.api.nvim_set_hl(0, "NavicIconsProperty",      {default = true, fg = "#ff00ff"})
-- vim.api.nvim_set_hl(0, "NavicIconsField",         {default = true, fg = "#00ffff"})
-- vim.api.nvim_set_hl(0, "NavicIconsConstructor",   {default = true, fg = "#660066"})
-- vim.api.nvim_set_hl(0, "NavicIconsEnum",          {default = true, fg = "#cc66ff"})
-- vim.api.nvim_set_hl(0, "NavicIconsInterface",     {default = true, fg = "#0000ff"})
-- vim.api.nvim_set_hl(0, "NavicIconsFunction",      {default = true, fg = "#0099cc"})
-- vim.api.nvim_set_hl(0, "NavicIconsVariable",      {default = true, fg = "#ff0066"})
-- vim.api.nvim_set_hl(0, "NavicIconsConstant",      {default = true, fg = "#ff99c2"})
-- vim.api.nvim_set_hl(0, "NavicIconsString",        {default = true, fg = "#cc9900"})
-- vim.api.nvim_set_hl(0, "NavicIconsNumber",        {default = true, fg = "#ccff66"})
-- vim.api.nvim_set_hl(0, "NavicIconsBoolean",       {default = true, fg = "#0099ff"})
-- vim.api.nvim_set_hl(0, "NavicIconsArray",         {default = true, fg = "#009900"})
-- vim.api.nvim_set_hl(0, "NavicIconsObject",        {default = true, fg = "#9999ff"})
-- vim.api.nvim_set_hl(0, "NavicIconsKey",           {default = true, fg = "#cc0099"})
-- vim.api.nvim_set_hl(0, "NavicIconsNull",          {default = true, fg = "#333300"})
-- vim.api.nvim_set_hl(0, "NavicIconsEnumMember",    {default = true, fg = "#ff3399"})
-- vim.api.nvim_set_hl(0, "NavicIconsStruct",        {default = true, fg = "#000066"})
-- vim.api.nvim_set_hl(0, "NavicIconsEvent",         {default = true, fg = "#336600"})
-- vim.api.nvim_set_hl(0, "NavicIconsOperator",      {default = true, fg = "#006699"})
-- vim.api.nvim_set_hl(0, "NavicIconsTypeParameter", {default = true, fg = "#666699"})
-- vim.api.nvim_set_hl(0, "NavicText",               {default = true, fg = "gray"})
-- vim.api.nvim_set_hl(0, "NavicSeparator",          {default = true, fg = "gray"})

require("symbols-outline").setup()
--vim.notify = require("notify")

