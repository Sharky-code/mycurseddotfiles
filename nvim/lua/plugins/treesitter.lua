local ok, configs = pcall(require, "nvim-treesitter.configs")
if not ok then
	return
end

configs.setup {
	playground = {},
	highlight = {
		enable = true,
		disable = {},
	}
}
