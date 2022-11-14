-- this is a module just because its used for debugging
-- how this works is that everytime the colorscheme change the autocommand will update the color based on the statusline color
-- and will generate a new theme (lmao this concept took me as long as scroling down to the bottom of the feline documentation, which is 2 days)

local M = {}

local ok, feline = pcall(require, 'feline')
if not ok then
	return
end

local vi_mode_utils = require('feline.providers.vi_mode')
local navic = require('nvim-navic')

local vi_mode_colors = {
  NORMAL = "#42bff5",
  INSERT = "#35de5a",
  VISUAL = "#de357b",
  OP = "#d4352c",
  REPlACE= "#283ed1",
  SELECT = "#de357b",
  COMMAND = "#e6de07",
  TERM = "#283ed1",
	LINES = "#8803fc",
}

local icon = {
    linux = ' ',
    macos = ' ',
    windows = ' ',

    errs = ' ',
    warns = ' ',
    infos = ' ',
    hints = ' ',

    lsp = ' ', git = ''
}

--didn't know about these lua nvim commands so the code below isn't mine, but i designed the statusbar :)
local function file_osinfo()
    local os = vim.bo.fileformat:upper()
    local icon
    if os == 'UNIX' then
        icon = ' '
    elseif os == 'MAC' then
        icon = ' '
    else
        icon = ' '
    end
    return icon .. os
end


local function rgb_str2num(rgb_color_str)
  if rgb_color_str:find('#') == 1 then
    rgb_color_str = rgb_color_str:sub(2, #rgb_color_str)
  end
  local red = tonumber(rgb_color_str:sub(1, 2), 16)
  local green = tonumber(rgb_color_str:sub(3, 4), 16)
  local blue = tonumber(rgb_color_str:sub(5, 6), 16)
  return { red = red, green = green, blue = blue }
end

local function rgb_num2str(rgb_color_num)
  local rgb_color_str = string.format('#%02x%02x%02x', rgb_color_num.red, rgb_color_num.green, rgb_color_num.blue)
  return rgb_color_str
end

local function brightness_change(rgb_color, gamma)
	gamma = gamma / 100
	return {
		red = math.min(255, rgb_color.red * gamma),
		green = math.min(255, rgb_color.green * gamma),
		blue = math.min(255, rgb_color.blue * gamma)
	}
end

function ChangeColor(hl)
	-- local statusline = {}
	local list = vim.api.nvim_get_hl_by_name(hl, true)
	for k, v in pairs(list) do
		if tonumber(v, 10) then
			list[k] = string.format("#%06x", v)
		end
	end

	return list
end


local theme = {
	bg = ChangeColor("StatusLine").background,
	fg = ChangeColor("Normal").foreground,
	bg50 = rgb_num2str(brightness_change(rgb_str2num(ChangeColor("StatusLine").background), 25)),
	bg100 = rgb_num2str(brightness_change(rgb_str2num(ChangeColor("StatusLine").background), 125)),
	bg150 = rgb_num2str(brightness_change(rgb_str2num(ChangeColor("StatusLine").background), 150)),
	bg200 = rgb_num2str(brightness_change(rgb_str2num(ChangeColor("StatusLine").background), 200)),
	bg250 = rgb_num2str(brightness_change(rgb_str2num(ChangeColor("StatusLine").background), 250)),
	bg300 = rgb_num2str(brightness_change(rgb_str2num(ChangeColor("StatusLine").background), 300)),
}
vim.api.nvim_set_hl(0, "NavicIconsFile",          {default = true, bg = ChangeColor("StatusLine").background, fg = "#ff5050"})
vim.api.nvim_set_hl(0, "NavicIconsModule",        {default = true, bg = ChangeColor("StatusLine").background, fg = "#660000"})
vim.api.nvim_set_hl(0, "NavicIconsNamespace",     {default = true, bg = ChangeColor("StatusLine").background, fg = "#ff6600"})
vim.api.nvim_set_hl(0, "NavicIconsPackage",       {default = true, bg = ChangeColor("StatusLine").background, fg = "#ffa366"})
vim.api.nvim_set_hl(0, "NavicIconsClass",         {default = true, bg = ChangeColor("StatusLine").background, fg = "#00ff00"})
vim.api.nvim_set_hl(0, "NavicIconsMethod",        {default = true, bg = ChangeColor("StatusLine").background, fg = "#008000"})
vim.api.nvim_set_hl(0, "NavicIconsProperty",      {default = true, bg = ChangeColor("StatusLine").background, fg = "#ff00ff"})
vim.api.nvim_set_hl(0, "NavicIconsField",         {default = true, bg = ChangeColor("StatusLine").background, fg = "#00ffff"})
vim.api.nvim_set_hl(0, "NavicIconsConstructor",   {default = true, bg = ChangeColor("StatusLine").background, fg = "#660066"})
vim.api.nvim_set_hl(0, "NavicIconsEnum",          {default = true, bg = ChangeColor("StatusLine").background, fg = "#cc66ff"})
vim.api.nvim_set_hl(0, "NavicIconsInterface",     {default = true, bg = ChangeColor("StatusLine").background, fg = "#0000ff"})
vim.api.nvim_set_hl(0, "NavicIconsFunction",      {default = true, bg = ChangeColor("StatusLine").background, fg = "#0099cc"})
vim.api.nvim_set_hl(0, "NavicIconsVariable",      {default = true, bg = ChangeColor("StatusLine").background, fg = "#ff0066"})
vim.api.nvim_set_hl(0, "NavicIconsConstant",      {default = true, bg = ChangeColor("StatusLine").background, fg = "#ff99c2"})
vim.api.nvim_set_hl(0, "NavicIconsString",        {default = true, bg = ChangeColor("StatusLine").background, fg = "#cc9900"})
vim.api.nvim_set_hl(0, "NavicIconsNumber",        {default = true, bg = ChangeColor("StatusLine").background, fg = "#ccff66"})
vim.api.nvim_set_hl(0, "NavicIconsBoolean",       {default = true, bg = ChangeColor("StatusLine").background, fg = "#0099ff"})
vim.api.nvim_set_hl(0, "NavicIconsArray",         {default = true, bg = ChangeColor("StatusLine").background, fg = "#009900"})
vim.api.nvim_set_hl(0, "NavicIconsObject",        {default = true, bg = ChangeColor("StatusLine").background, fg = "#9999ff"})
vim.api.nvim_set_hl(0, "NavicIconsKey",           {default = true, bg = ChangeColor("StatusLine").background, fg = "#cc0099"}) 
vim.api.nvim_set_hl(0, "NavicIconsNull",          {default = true, bg = ChangeColor("StatusLine").background, fg = "#333300"})
vim.api.nvim_set_hl(0, "NavicIconsEnumMember",    {default = true, bg = ChangeColor("StatusLine").background, fg = "#ff3399"})
vim.api.nvim_set_hl(0, "NavicIconsStruct",        {default = true, bg = ChangeColor("StatusLine").background, fg = "#000066"})
vim.api.nvim_set_hl(0, "NavicIconsEvent",         {default = true, bg = ChangeColor("StatusLine").background, fg = "#336600"})
vim.api.nvim_set_hl(0, "NavicIconsOperator",      {default = true, bg = ChangeColor("StatusLine").background, fg = "#006699"})
vim.api.nvim_set_hl(0, "NavicIconsTypeParameter", {default = true, bg = ChangeColor("StatusLine").background, fg = "#666699"})
vim.api.nvim_set_hl(0, "NavicText",               {default = true, bg = ChangeColor("StatusLine").background, fg = "gray"})
vim.api.nvim_set_hl(0, "NavicSeparator",          {default = true, bg = ChangeColor("StatusLine").background, fg = "gray"})

M.updateColor = function()
	theme.bg = ChangeColor("StatusLine").background
	local colortheme = {
		bg = ChangeColor("StatusLine").background,
		fg = ChangeColor("Normal").foreground,
		bg50 = rgb_num2str(brightness_change(rgb_str2num(ChangeColor("StatusLine").background), 25)),
		bg100 = rgb_num2str(brightness_change(rgb_str2num(ChangeColor("StatusLine").background), 125)),
		bg150 = rgb_num2str(brightness_change(rgb_str2num(ChangeColor("StatusLine").background), 150)),
		bg200 = rgb_num2str(brightness_change(rgb_str2num(ChangeColor("StatusLine").background), 200)),
		bg250 = rgb_num2str(brightness_change(rgb_str2num(ChangeColor("StatusLine").background), 250)),
		bg300 = rgb_num2str(brightness_change(rgb_str2num(ChangeColor("StatusLine").background), 300)),
	}
	vim.api.nvim_set_hl(0, "NavicIconsFile",          {default = true, bg = ChangeColor("StatusLine").background, fg = "#ff5050"})
	vim.api.nvim_set_hl(0, "NavicIconsModule",        {default = true, bg = ChangeColor("StatusLine").background, fg = "#660000"})
	vim.api.nvim_set_hl(0, "NavicIconsNamespace",     {default = true, bg = ChangeColor("StatusLine").background, fg = "#ff6600"})
	vim.api.nvim_set_hl(0, "NavicIconsPackage",       {default = true, bg = ChangeColor("StatusLine").background, fg = "#ffa366"})
	vim.api.nvim_set_hl(0, "NavicIconsClass",         {default = true, bg = ChangeColor("StatusLine").background, fg = "#00ff00"})
	vim.api.nvim_set_hl(0, "NavicIconsMethod",        {default = true, bg = ChangeColor("StatusLine").background, fg = "#008000"})
	vim.api.nvim_set_hl(0, "NavicIconsProperty",      {default = true, bg = ChangeColor("StatusLine").background, fg = "#ff00ff"})
	vim.api.nvim_set_hl(0, "NavicIconsField",         {default = true, bg = ChangeColor("StatusLine").background, fg = "#00ffff"})
	vim.api.nvim_set_hl(0, "NavicIconsConstructor",   {default = true, bg = ChangeColor("StatusLine").background, fg = "#660066"})
	vim.api.nvim_set_hl(0, "NavicIconsEnum",          {default = true, bg = ChangeColor("StatusLine").background, fg = "#cc66ff"})
	vim.api.nvim_set_hl(0, "NavicIconsInterface",     {default = true, bg = ChangeColor("StatusLine").background, fg = "#0000ff"})
	vim.api.nvim_set_hl(0, "NavicIconsFunction",      {default = true, bg = ChangeColor("StatusLine").background, fg = "#0099cc"})
	vim.api.nvim_set_hl(0, "NavicIconsVariable",      {default = true, bg = ChangeColor("StatusLine").background, fg = "#ff0066"})
	vim.api.nvim_set_hl(0, "NavicIconsConstant",      {default = true, bg = ChangeColor("StatusLine").background, fg = "#ff99c2"})
	vim.api.nvim_set_hl(0, "NavicIconsString",        {default = true, bg = ChangeColor("StatusLine").background, fg = "#cc9900"})
	vim.api.nvim_set_hl(0, "NavicIconsNumber",        {default = true, bg = ChangeColor("StatusLine").background, fg = "#ccff66"})
	vim.api.nvim_set_hl(0, "NavicIconsBoolean",       {default = true, bg = ChangeColor("StatusLine").background, fg = "#0099ff"})
	vim.api.nvim_set_hl(0, "NavicIconsArray",         {default = true, bg = ChangeColor("StatusLine").background, fg = "#009900"})
	vim.api.nvim_set_hl(0, "NavicIconsObject",        {default = true, bg = ChangeColor("StatusLine").background, fg = "#9999ff"})
	vim.api.nvim_set_hl(0, "NavicIconsKey",           {default = true, bg = ChangeColor("StatusLine").background, fg = "#cc0099"}) 
	vim.api.nvim_set_hl(0, "NavicIconsNull",          {default = true, bg = ChangeColor("StatusLine").background, fg = "#333300"})
	vim.api.nvim_set_hl(0, "NavicIconsEnumMember",    {default = true, bg = ChangeColor("StatusLine").background, fg = "#ff3399"})
	vim.api.nvim_set_hl(0, "NavicIconsStruct",        {default = true, bg = ChangeColor("StatusLine").background, fg = "#000066"})
	vim.api.nvim_set_hl(0, "NavicIconsEvent",         {default = true, bg = ChangeColor("StatusLine").background, fg = "#336600"})
	vim.api.nvim_set_hl(0, "NavicIconsOperator",      {default = true, bg = ChangeColor("StatusLine").background, fg = "#006699"})
	vim.api.nvim_set_hl(0, "NavicIconsTypeParameter", {default = true, bg = ChangeColor("StatusLine").background, fg = "#666699"})
	vim.api.nvim_set_hl(0, "NavicText",               {default = true, bg = ChangeColor("StatusLine").background, fg = "gray"})
	vim.api.nvim_set_hl(0, "NavicSeparator",          {default = true, bg = ChangeColor("StatusLine").background, fg = "gray"})
	feline.reset_highlights()
	feline.use_theme(colortheme)
end

M.theme = theme

local components = {
	active = {
	{
		{
			provider = function()
				return "  " .. vi_mode_utils.get_vim_mode() .. "  "
			end,
			hl = function()
				local val = {
					name = vi_mode_utils.get_mode_highlight_name(),
					bg = vi_mode_colors[vi_mode_utils.get_vim_mode()],
					fg = "bg",
					style = 'bold'
				}
				return val
			end,
			left_sep = {
				str = " ",
				hl = function ()
					local val = {
						name = vi_mode_utils.get_mode_highlight_name(),
						bg = vi_mode_colors[vi_mode_utils.get_vim_mode()],
					}
					return val
				end
			},
			right_sep = {
				str = " ",
				hl = function ()
					local val = {
						name = vi_mode_utils.get_mode_highlight_name(),
						bg = vi_mode_colors[vi_mode_utils.get_vim_mode()],
						fg = "bg",
						style = "bold",
					}
					return val
				end
			},
			type = 'relative',
		},
		{
			provider = "file_info",
			hl = function()
				local val = {
					name = vi_mode_utils.get_mode_highlight_name(),
					bg = vi_mode_colors[vi_mode_utils.get_vim_mode()],
					fg = "bg50",
					style = 'bold'
				}
				return val
			end,
			right_sep = {
				str ="██",
				hl = function()
					local val = {
						name = vi_mode_utils.get_mode_highlight_name(),
						fg = vi_mode_colors[vi_mode_utils.get_vim_mode()],
						bg = 'bg250',
						style = 'bold'
					}
					return val
				end,
			},
			left_sep = {
				str ="██",
				hl = function()
					local val = {
						name = vi_mode_utils.get_mode_highlight_name(),
						fg = vi_mode_colors[vi_mode_utils.get_vim_mode()],
						bg = 'bg250',
						style = 'bold'
					}
					return val
				end,
			},
		},
		{
			provider = "git_branch",
			hl = {
				bg = "bg250",
			},
			icon = " ",
			left_sep = {str = "  ", hl = { bg =  "bg250", }},
			right_sep = {str = " ", hl = { bg =  "bg250", }},
		},
		{
			provider = 'git_diff_added',
			hl = {
				fg = "green",
				bg = "bg250"
			}
		},
		{
			provider = "git_diff_changed",
			hl = {
				fg = "yellow",
				bg = "bg250"
			}
		},
		{
			provider = "git_diff_removed",
			hl = {
				fg = "red",
				bg = "bg250"
			}
		},
		{
			provider = " ",
			hl = {
				bg = "bg250",
				fg = "bg200"
			},
			right_sep = {
				str = " ",
				hl = {
					bg = "bg200",
					fg = "bg250"
				}
			}
		},
		{
			provider = 'file_type',
			hl = {
				bg = "bg200",
				style = "bold"
			},
			right_sep = {
				str = "█",
				hl = {
					bg = "bg200",

					fg = "bg200"
				}
			},
		},
		{
			provider = 'lsp_client_names',
			icon = icon.lsp,
			hl = {
				fg = "orange",
				bg = "bg200"
			},
			left_sep = {str = ' ', hl = {bg = 'bg200' }},
			right_sep = {str = '█', hl = {bg = 'bg', fg = 'bg200'}},
		},
		{
			provider = function()
				if navic.is_available() then
					return navic.get_location()
				else
					return ""
				end
			end,
			left_sep = { str = " ", hl = {bg= "bg" }},
			right_sep = { str = " ", hl = {bg= "bg"}},
			hl = {bg="bg"}
		}
	},

	{
	},

	{
		{
			provider = 'file_encoding',
			hl = {
				bg = "bg100",
				fg = "bg300"
			},
			left_sep = {
				str = "█",
				hl = {
					fg = "bg100",
					bg = "bg"
				}
			},
			right_sep = {
				str = " ",
				hl = {
					bg = "bg100"
				}
			}
		},

		{
			provider = function()
				return file_osinfo()
			end,
			hl = {
				bg = "bg100",
				fg = "bg300"
			},
			right_sep = {
				str = " ",
				hl = {
					bg = "bg100"
				}
			},
		},
		{
			provider = function()
				return tostring(#vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT}))
			end,
			icon = icon.hints,
			hl = {
				fg = "yellow",
				bg = "bg200"

			},
			left_sep = {
				str = "█",
				hl = {
					bg = "bg100",
					fg = "bg200",

				},
			},
		},
		{
			provider = function()
				return tostring(#vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN}))
			end,
			icon = icon.warns,
			hl = {
				fg = "orange",
				bg = "bg200"

			},
			left_sep = {
				str = " ",
				hl = {
					bg = "bg200"
				}
			},
			right_sep = {
				str = " ",
				hl = {
					bg = "bg200"
				}
			}
		},
		{
			provider = function()
				return tostring(#vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR }))
			end,
			icon = icon.errs,
			hl = {
				fg = "red",
				bg = "bg200",
			},
			left_sep = "",
			right_sep = {str = "█", hl = {fg = "bg200", bg = "bg"}},
		},
		--[[
		--    left = "",
    right = " ",
  },

  round = {
    left = "",
    right = "",
  },

  block = {
    left = "█",
    right = "█",
  },

  arrow = {
    left = "",
    right = "",
		--]]
		{
			provider = 'position',
			hl = {
				bg = "bg",
				fg = "bg250",
				style = "bold"
			},
			left_sep = {str = "   ", hl = {fg = "bg", bg = "bg"}},
			right_sep = {str = "   ", hl = {fg = "bg", bg = "bg"}},
		},
		{
			provider = function ()
				return 'TABSTOP: ' .. tostring(vim.o.tabstop)
			end,
			hl = {
				bg = "bg",
				fg = "bg250",
				style = "bold"
			},
			right_sep = {
				str = "   ",
				hl = {
					bg = "bg",
				},
			}
		},
		{
			provider = 'line_percentage',
			hl = function()
					local val = {
						vi_mode_utils.get_mode_highlight_name(),
						bg = vi_mode_colors[vi_mode_utils.get_vim_mode()],
						fg = "bg"
					}
					return val
			end,
			left_sep = {str = "█",
			hl = function()
					local val = {
						vi_mode_utils.get_mode_highlight_name(),
						fg = vi_mode_colors[vi_mode_utils.get_vim_mode()],
						bg = "bg"
					}
					return val
				end
			},
			right_sep = "██",
		},
		{
			provider = 'scroll_bar',
			hl = function()
				local val = {
					vi_mode_utils.get_mode_highlight_name(),
					bg = vi_mode_colors[vi_mode_utils.get_vim_mode()],
					fg = "bg300"
				}
				return val
			end,
			},
			right_sep = {
				str = "",
				hl = function()
						local val = {
							vi_mode_utils.get_mode_highlight_name(),
							fg = vi_mode_colors[vi_mode_utils.get_vim_mode()],
							bg = "bg"
						}
						return val
					end
				}
		},
		-- {
		-- 	provider = '█',
		-- 	hl = {
		-- 		hl = function()
		-- 				local val = {
		-- 					vi_mode_utils.get_mode_highlight_name(),
		-- 					fg = vi_mode_colors[vi_mode_utils.get_vim_mode()],
		-- 				}
		-- 				return val
		-- 			end
		-- 	}
		--
		-- }

	},
	inactive = {
	{
		{
			provider = "file_info",
		}
	},
	{},
	{},
}
}

feline.setup {components = components, }
feline.use_theme(theme)

return M
