local ok, betteresc = pcall(require, 'better_escape')
if not ok then
	return
end

betteresc.setup {
    mapping = {"jk", "jj"},
    timeout = vim.o.timeoutlen,
    clear_empty_lines = false,
    keys = "<Esc>",
}
