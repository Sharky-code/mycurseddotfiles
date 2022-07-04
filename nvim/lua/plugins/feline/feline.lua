--most of these are not my code

--goal: 
--	Get the red, green, yellow. orange and other colors from the colortheme and use it for the vi_mode indicator
--		WAIT nevermind they use a fixed value .-.
--	Able to increase/decrease the contrast for some of the widgets
--	Able to update it every time i change color theme and have auto color stuff
-- for some reason the statusline color variable doesn't update so do that and you will be able to have the statusline change color when you change color scheme

-- local M = {}

local ok, feline = pcall(require, 'feline')
if not ok then
	return
end

local vi_mode_utils = require('feline.providers.vi_mode')
local lsp = require('feline.providers.lsp')
local navic = require('nvim-navic')

local vi_mode_colors = {
  NORMAL = "#42bff5",
  INSERT = "#35de5a",
  VISUAL = "#de357b",
  --[""] = "FlnViMagenta",
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

local icons = {
  locker = "", -- #f023
  page = "☰", -- 2630
  line_number = "", -- e0a1
  connected = "", -- f817
  dos = "", -- e70f
  unix = "", -- f17c
  mac = "", -- f179
  mathematical_L = "𝑳",
  vertical_bar = "┃",
  vertical_bar_thin = "│",
  left = "",
  right = "",
  block = "█",
  left_filled = "",
  right_filled = "",
  slant_left = "",
  slant_left_thin = "",
  slant_right = "",
  slant_right_thin = "",
  slant_left_2 = "",
  slant_left_2_thin = "",
  slant_right_2 = "",
  slant_right_2_thin = "",
  left_rounded = "",
  left_rounded_thin = "",
  right_rounded = "",
  right_rounded_thin = "",
  circle = "●",
}

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

-- local xyz = require('plugins.feline.color')
-- statuslinebg = xyz.color.bg

local statusline = {}
local list = vim.api.nvim_get_hl_by_name("StatusLine", true)
for k, v in pairs(list) do
	local name = k == "background" and "bg" or "fg"
	statusline[name] = string.format("#%06x", v)
end
local statuslinebg = statusline.bg


local function diag_of(f, s)
    local icon = icons[s]
    return function()
        local diag = f()[s]
        return icon .. diag
    end
end

local function diag_enable(f, s)
    return function()
        local diag = f()[s]
        return diag and diag ~= 0
    end
end


local function lsp_diagnostics_info()
    return {
        errs = lsp.get_diagnostics_count('Error'),
        warns = lsp.get_diagnostics_count('Warning'),
        infos = lsp.get_diagnostics_count('Information'),
        hints = lsp.get_diagnostics_count('Hint')
    }
end

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
					fg = statuslinebg,
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
						bg = statuslinebg,
						style = 'bold'
					}
					return val
				end,
			},
		},
		{
			provider = "git_branch",
			hl = {
				bg = statuslinebg,
			},
			icon = icon.git,
		left_sep = {str = "  ", hl = { bg = statuslinebg , }},
			right_sep = {str = "  ", hl = { bg = statuslinebg , }},
		},
		{
			provider = 'git_diff_added',
			hl = {
				fg = "green",
				bg = statuslinebg,
			}
		},
		{
			provider = "git_diff_changed",
			hl = {
				fg = "yellow",
				bg = statuslinebg 
			}
		},
		{
			provider = "git_diff_removed",
			hl = {
				fg = "red",
				bg = statuslinebg 
			}
		},
		{
			provider = " ",
			hl = {
				bg = statuslinebg,
				fg = rgb_num2str(brightness_change(rgb_str2num(statuslinebg), 200)),
			}
		},
		{
			provider = 'file_info',
			hl = {
				bg = rgb_num2str(brightness_change(rgb_str2num(statuslinebg), 200)),
			},
		 left_sep = {
			 str = "█",
			 hl = {
				bg = statuslinebg,
				fg = rgb_num2str(brightness_change(rgb_str2num(statuslinebg), 200)),
			 }
		 },
		 right_sep = {
			 str = " ",
			 hl = {
				fg = rgb_num2str(brightness_change(rgb_str2num(statuslinebg), 200)),
				bg = rgb_num2str(brightness_change(rgb_str2num(statuslinebg), 200)),
			 }
		 },
			-- right_sep = "",
		type = 'relative',

		},
		-- {
		-- 	provider = ' │ ',
		-- 	hl = {
		-- 		bg = rgb_num2str(brightness_change(rgb_str2num(color.bg), 200)),
		-- 		fg = rgb_num2str(brightness_change(rgb_str2num(color.fg), 200)),
		-- 	}
		-- },
		{
			provider = 'file_type',
			hl = {
				bg = rgb_num2str(brightness_change(rgb_str2num(statuslinebg ), 200)),
			},
			right_sep = {
				str = "█",
				hl = {
					bg = statuslinebg ,

				fg = rgb_num2str(brightness_change(rgb_str2num(statuslinebg ), 200)),
				}
			},

		},

		{
			provider = 'lsp_client_names',
			icon = icon.lsp,
			hl = {
				fg = "orange",
				bg = statuslinebg,
			},
			left_sep = {str = ' ', hl = {bg = statuslinebg }},
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
			left_sep = { str = " ", hl = {bg=statuslinebg }},
			right_sep = { str = " ", hl = {bg=statuslinebg }},
			hl = {
				fg = "yellow",
				bg = statuslinebg 
			}
		}
	},

	{
	},

	{
		{
			provider = 'file_encoding',
			hl = {
				bg = rgb_num2str(brightness_change(rgb_str2num(statuslinebg ), 300)),
			},
			left_sep = {
				str = "█",
				hl = {
					fg = rgb_num2str(brightness_change(rgb_str2num(statuslinebg ), 300)),

					bg = statuslinebg 
				}
			},
			right_sep = {
				str = " ",
				hl = {
					bg = rgb_num2str(brightness_change(rgb_str2num(statuslinebg ), 300)),

				}
			}
		},

		{
			provider = function()
				return file_osinfo()
			end,
			hl = {
				bg = rgb_num2str(brightness_change(rgb_str2num(statuslinebg ), 300)),

			},
			right_sep = {
				str = " ",
				hl = {
					bg = rgb_num2str(brightness_change(rgb_str2num(statuslinebg ), 300)),

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
				bg = rgb_num2str(brightness_change(rgb_str2num(statuslinebg ), 200)),

			},
			left_sep = {
				str = "█",
				hl = {
					bg = rgb_num2str(brightness_change(rgb_str2num(statuslinebg ), 300)),
					fg = rgb_num2str(brightness_change(rgb_str2num(statuslinebg ), 200)),

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
				bg = rgb_num2str(brightness_change(rgb_str2num(statuslinebg ), 200)),

			},
			left_sep = {
				str = " ",
				hl = {
					bg = rgb_num2str(brightness_change(rgb_str2num(statuslinebg ), 200)),
				}
			},
			right_sep = {
				str = " ",
				hl = {
					bg = rgb_num2str(brightness_change(rgb_str2num(statuslinebg ), 200)),
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
				bg = rgb_num2str(brightness_change(rgb_str2num(statuslinebg ), 200)),
			},
			--left_sep = "█",
			right_sep = "",
		},
		{
			provider = 'position',
			hl = {
				bg = rgb_num2str(brightness_change(rgb_str2num(statuslinebg ), 200)),
			},
			left_sep = {
				str = "  ",
				hl = {
					bg = rgb_num2str(brightness_change(rgb_str2num(statuslinebg ), 200)),
				}
			},
			right_sep = "██",
		},
		{
			provider = 'line_percentage',
			hl = {
				bg = rgb_num2str(brightness_change(rgb_str2num(statuslinebg ), 200)),
			},
			right_sep = "██",
		},
		{
			provider = 'scroll_bar',
			hl = {
				bg = rgb_num2str(brightness_change(rgb_str2num(statuslinebg ), 200)),
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

-- M.components = components
-- M.color = color

feline.setup {components = components, }

-- return M
