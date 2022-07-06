--this is again, my previous tab line plugin that i use. but I experimented with other stuff and decided bufferline fitted my design better
local ok, cokeline = pcall(require, 'cokeline')
if not ok then
	return
end

local get_hex = require('cokeline/utils').get_hex

cokeline.setup{
	  default_hl = {
    fg = function(buffer)
      return
        buffer.is_focused
        --and get_hex('Normal', 'fg') or get_hex('Comment', 'fg')
        and get_hex('Normal', 'bg') or get_hex('Comment', 'bg')
    end,
    bg = function(buffer)
      return
      buffer.is_focused
      and get_hex('Normal', 'fg')
      or get_hex('ColorColumn', 'bg')
    end
    --bg = 'NONE',
  },

  sidebar = {
    filetype = 'NvimTree',
    components = {
      {
        text = '  [  FILE EXPLORER  ]',
        fg = yellow,
        bg = bg,
        --bg = get_hex('NvimTreeNormal', 'bg'),
        style = 'bold',
      },
    }
  },

  components = {
    {
      text = ' [ '
    },
    {
      text = function(buffer) return buffer.filename end,
      style = function(buffer) return buffer.is_focused and 'bold' or nil end,
    },
    {
      text = ' ] ',
    }
  },
}
