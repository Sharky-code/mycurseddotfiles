local ok, bufferline= pcall(require, 'bufferline')
if not ok then
	return
end

bufferline.setup{
	seperator_style = "slant",
	always_show_bufferline = true,
	numbers = "ordinal",

	offsets = {
		{
			filetype = "NvimTree",
			text = "File Explorer",
			highlight = "Directory",
			text_align = "left"
		}
	},

	diagnostics_indicator = function(count, level, diagnostics_dict, context)
  local icon = level:match("error") and " " or " "
  return " " .. icon .. count

end
}
