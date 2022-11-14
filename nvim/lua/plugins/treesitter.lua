local ok, configs = pcall(require, "nvim-treesitter.configs")
if not ok then
	return
end

configs.setup {
	ensure_installed = { "cpp", "lua", "python", "java" },
	ignore_install = { "javascript" },
	auto_install = true,
	sync_install = true,
	playground = {},
	highlight = {
		enable = true,
		disable = {},
	},
	rainbow = {
		enable = true,
		extended_mode = true,
	},
	additional_vim_regex_highlighting = false,
	-- the rainbow thing is really useful. but remove it if you find it not aesthetically pleasing
}

