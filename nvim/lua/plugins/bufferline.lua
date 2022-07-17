local ok, bufferline= pcall(require, 'bufferline')
if not ok then
	return
end

bufferline.setup{
	options = {
		separator_style = "slant",
		always_show_bufferline = true,
		numbers = "ordinal",
		enforce_regular_tab = true,
		diagnostics = "nvim_lsp",
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				text_align = "left",
				padding = 0
			}
		}, --separator_style = { "n", "m" },

		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			local icon = level:match("error") and " " or " "
			return " " .. icon .. count

		end
	}
}
