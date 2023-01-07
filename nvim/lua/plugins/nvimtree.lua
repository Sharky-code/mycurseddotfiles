local ok, a = pcall(require, "nvim-tree")
if not ok then
	return
end

a.setup {
	open_on_setup = true,
	diagnostics = {
		enable = true,
	},
	view = {
		width = 30,
		side = "left",
		mappings = {
			list = {
				{
					key = "<C-e>",
					action = "",
				},
				{
					key = "D",
					action = "remove",
				},
				{
					key = "d",
					action = "trash",
				},
			},
		},
	},
	filters = {
		dotfiles = false,
	},
	git = {
		enable = true,
		ignore = false,
	},
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
}

require('nvim-tree.view').View.winopts.signcolumn = 'no'
