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
	fg = ChangeColor("StatusLine").foreground,
	bg200 = rgb_num2str(brightness_change(rgb_str2num(ChangeColor("StatusLine").background), 200)),
	bg300 = rgb_num2str(brightness_change(rgb_str2num(ChangeColor("StatusLine").background), 300)),
}

M.updateColor = function()
	theme.bg = ChangeColor("StatusLine").background
	local colortheme = {
		bg = ChangeColor("StatusLine").background,
		fg = ChangeColor("StatusLine").foreground,
		bg200 = rgb_num2str(brightness_change(rgb_str2num(ChangeColor("StatusLine").background), 200)),
		bg300 = rgb_num2str(brightness_change(rgb_str2num(ChangeColor("StatusLine").background), 300)),
	}
	feline.reset_highlights()
	feline.use_theme(colortheme)
end

M.theme = theme

components = {
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
					fg = theme.bg,
					style = 'bold'
				}
				return val
			end,
			right_sep = {
				str ="",
				hl = function()
					local val = {
						name = vi_mode_utils.get_mode_highlight_name(),
						fg = vi_mode_colors[vi_mode_utils.get_vim_mode()],
						bg = 'bg',
						style = 'bold'
					}
					return val
				end,
			},
		},
		{
			provider = "git_branch",
			hl = {
				bg = "bg",
			},
			icon = " ",
		left_sep = {str = "  ", hl = { bg =  "bg", }},
			right_sep = {str = "  ", hl = { bg =  "bg", }},
		},
		{
			provider = 'git_diff_added',
			hl = {
				fg = "green",
				bg = "bg"
			}
		},
		{
			provider = "git_diff_changed",
			hl = {
				fg = "yellow",
				bg = "bg"
			}
		},
		{
			provider = "git_diff_removed",
			hl = {
				fg = "red",
				bg = "bg"
			}
		},
		{
			provider = " ",
			hl = {
				bg = "bg",
				fg = "bg200"
			}
		},
		{
			provider = 'file_info',
			hl = {
				bg = "bg200"
			},
		 left_sep = {
			 str = "█",
			 hl = {
				 bg = "bg",
				fg = "bg200",
			 }
		 },
		 right_sep = {
			 str = " ",
			 hl = {
				 fg = "bg200",
				 bg = "bg200",
			 }
		 },
		type = 'relative',

		},
		{
			provider = 'file_type',
			hl = {
				bg = "bg200"
			},
			right_sep = {
				str = "█",
				hl = {
					bg = "bg",

					fg = "bg200"
				}
			},
},
		{
			provider = 'lsp_client_names',
			icon = icon.lsp,
			hl = {
				fg = "orange",
				bg = "bg"
			},
			left_sep = {str = ' ', hl = {bg = 'bg' }},
			right_sep = "",
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
			hl = {
				fg = "yellow",
				bg = "bg"
			}
		}
	},

	{
	},

	{
		{
			provider = 'file_encoding',
			hl = {
				bg = "bg300"
			},
			left_sep = {
				str = "█",
				hl = {
					fg = "bg300",
					bg = "bg"
				}
			},
			right_sep = {
				str = " ",
				hl = {
					bg = "bg300"
				}
			}
		},

		{
			provider = function()
				return file_osinfo()
			end,
			hl = {
				bg = "bg300"
			},
			right_sep = {
				str = " ",
				hl = {
					bg = "bg300"
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
				str = "█",
				hl = {
					bg = "bg300",
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
			--left_sep = "█",
			right_sep = "",
		},
		{
			provider = 'position',
			hl = {
				bg = "bg200",
			},
			left_sep = {
				str = "  ",
				hl = {
					bg = "bg200",
				}
			},
			right_sep = "██",
		},
		{
			provider = 'line_percentage',
			hl = {
				bg = "bg200",
			},
			right_sep = "██",
		},
		{
			provider = 'scroll_bar',
			hl = {
				bg = "bg200",
			},
		}
	},

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
