local ok, gitsign = pcall(require, 'gitsigns')
if not ok then
	return
end

gitsign.setup {
	preview_config = {
		border = 'round',
	}
}
