local ok, configs = pcall(require, "nvim-treesitter.configs")
if not ok then
	return

end function ChangeColor(hl)
	local list = vim.api.nvim_get_hl_by_name(hl, true)
	for k, v in pairs(list) do
		if tonumber(v, 10) then
			list[k] = string.format("#%06x", v)
		end
	end
	return list
end

configs.setup {
	ensure_installed = { "cpp", "lua", "python", "java" },
	ignore_install = { "javascript" },
	auto_install = true,
	playground = {},
	highlight = {
		enable = true,
		disable = {},
	},
	additional_vim_regex_highlighting = false,
	-- the rainbow thing is really useful. but remove it if you find it not aesthetically pleasing
	rainbow = {
		enable = true,
		extended_mode = true,
		colors = { -- thing about this: the color of the bracket doesn't change when you change colorscheme. for me thats ok because i find the colors of catpuccin soft 
		--if you don't like this though, just add it to autocmd or smth.
			ChangeColor("Function").foreground,
			ChangeColor("Tag").foreground,
			"#dbcf67",
		}
	},
}
