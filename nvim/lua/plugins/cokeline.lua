--this is again, my previous tab line plugin that i use. but I experimented with other stuff and decided bufferline fitted my design better

local M = {}
local ok, cokeline = pcall(require, 'cokeline')
if not ok then
	return
end

local get_hex = require('cokeline/utils').get_hex

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


cokeline.setup{
	  default_hl = {
		fg = function(buffer)
			return
				buffer.is_focused and get_hex('Normal', 'fg') or get_hex('Comment', 'fg')
		end,
		bg = function(buffer)
			return buffer.is_focused and get_hex('ColorColumn', 'bg') or get_hex('StatusLine', 'bg')
		end,
  },

  sidebar = {
    filetype = 'NvimTree',
    components = {
      {
        text = '  FILE EXPLORER',
        fg = yellow,
        -- bg = get_hex('NvimTreeNormal', 'bg'),
				bg = ChangeColor("NvimTreeNormal").background,
        --bg = get_hex('NvimTreeNormal', 'bg'),
        style = 'bold',

      },
    }
  },

  components = {
		{
			text = " "
		},
		{
      text = function(buffer) return buffer.index .. '. ' end,
    },
		{
      text = function(buffer) return buffer.devicon.icon .. ' ' end,
      fg = function(buffer) return buffer.devicon.color end,
    },
    {
      text = function(buffer) return buffer.filename end,
      style = function(buffer) return buffer.is_focused and 'bold' or nil end,
    },
		{
			text = " "
		},
  },
}

return M
