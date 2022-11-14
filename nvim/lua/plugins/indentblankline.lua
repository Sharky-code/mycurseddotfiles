local ok, l = pcall(require, 'indent_blankline')
if not ok then
	return
end

-- vim.opt.list = true

l.setup {
	char = '┊',
	space_char_blankline = " ",
	show_current_context = true,

	show_current_context_start = true,
} 
print("ok")
-- require('indent_blankline').setup {
--   char = '┊',
--   show_trailing_blankline_indent = false,
-- }

-- function ChangeColor(hl)
-- 	local statusline = {}
-- 	local list = vim.api.nvim_get_hl_by_name(hl, true)
-- 	for k, v in pairs(list) do
-- 		if tonumber(v, 10) then
-- 			list[k] = string.format("#%06x", v)
-- 		end
-- 	end
--
--  	return list
-- end
-- local function rgb_str2num(rgb_color_str)
--   if rgb_color_str:find('#') == 1 then
--     rgb_color_str = rgb_color_str:sub(2, #rgb_color_str)
--   end
--   local red = tonumber(rgb_color_str:sub(1, 2), 16)
--   local green = tonumber(rgb_color_str:sub(3, 4), 16)
--   local blue = tonumber(rgb_color_str:sub(5, 6), 16)
--   return { red = red, green = green, blue = blue }
-- end
--
-- local function rgb_num2str(rgb_color_num)
--   local rgb_color_str = string.format('#%02x%02x%02x', rgb_color_num.red, rgb_color_num.green, rgb_color_num.blue)
--   return rgb_color_str
-- end
--
-- local function brightness_change(rgb_color, gamma)
-- 	gamma = gamma / 100
-- 	return {
-- 		red = math.min(255, rgb_color.red * gamma),
-- 		green = math.min(255, rgb_color.green * gamma),
-- 		blue = math.min(255, rgb_color.blue * gamma)
-- 	}
-- end
--
-- --[[
-- --this doesn't work 
--
-- local bufferlineColor = tostring( rgb_num2str ( brightness_change( rgb_str2num ( ChangeColor("Normal").foreground ), 2000) ) )
--
-- vim.cmd[[ au ColorScheme * lua vim.cmd('hi IndentBlanklineChar guifg=' .. bufferlineColor) ]]
