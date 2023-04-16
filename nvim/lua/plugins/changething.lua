local M ={}
M.doitnow = function()
	local winbar_filetype_exclude = {
		"help",
		"startify",
		"dashboard",
		"packer",
		"neogitstatus",
		"NvimTree",
		"trouble",
		"alpha",
		"lir",
		"outline",
		"spectre_panel",
		"toggleterm",
		""
	}

	if vim.tbl_contains(winbar_filetype_exclude, vim.bo.filetype) then
		-- vim.opt_local.winbar = ""
		-- vim.opt_local.winbar = nil
		vim.opt_local.winbar = Nil
	else
		local opt = vim.opt_local
		opt.winbar = "%{%v:lua.require'plugins.winbar'.get_winbar()%}"
                --opt.winbar = "%{lua.require'plugins.winbar'.get_winbar()%}"
		-- opt.winbar = require'plugins.winbar'.get_winbar()
		-- print(require'plugins.winbar'.get_winbar())
	end
	
end

return M
