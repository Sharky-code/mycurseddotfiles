local ok, _ = pcall(require, "toggleterm")
if not ok then
	return
end

require("toggleterm").setup {
	size = 20,
	float_opts = {
		border = "curved",
	},
	direction = "float",
}
