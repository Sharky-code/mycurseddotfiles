--bufferline is used instead of cokeline because cokeline doesn't
--update the sidebar offset color when i change the colorscheme.
--bufferline has a more fixed style but i have changed the setti- 
--ngs just enough for it to match my preferences 
--sometimes the color will be weird for the bufferline. but thats
--because of the colorscheme :(

--might create my custom bufferline, tabline one day
--i don't think i'll make my custom statusline though
--i think feline is really easy to use and extremely customizable
local ok, bufferline= pcall(require, 'bufferline')
if not ok then
	return
end

bufferline.setup{
	options = {
		separator_style = {"", ""},
		-- separator_style = "thick",
		always_show_bufferline = true,
		-- numbers = "ordinal",
		indicator= {style="icon", icon='▎'}, --using this because for some colorschemes that have the NvimTreeVertSplit visible, it matches the style.
		-- indicator= {style="icon", icon=' '}, --using this because for some colorschemes that have the NvimTreeVertSplit visible, it matches the style.
		--it also doesn't look weird for colorschemes without NvimTreeVertSplit
		show_buffer_close_icons = true,
		show_close_icon = false,
		enforce_regular_tab = false,
		diagnostics = "nvim_lsp",
		-- custom_areas = {
		--  right = function()
		-- 		 return {{text = "" .. require('nvim-navic').get_location(), guibg = "bg", guifg = "fg"}}
		-- 	end
		-- },
		offsets = {
			{
				filetype = "NvimTree",
				text = "",
				highlight = "NvimTreeNormal",
				text_align = "center",
				padding = 0,
			}
		}, --separator_style = { "n", "m" },
	},
}
