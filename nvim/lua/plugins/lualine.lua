--DEPENDING ON MY MOOD I JUST CHANGE MY STATUSLINE TO SOMEONE ELSE'S LOL
local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return end

local navic = require("nvim-navic")

local hide_in_width = function()
	return vim.fn.winwidth(0) > 80
end local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn" },
	symbols = { error = " ", warn = " " },
	colored = false,
	update_in_insert = false,
	always_visible = true,
}

local diff = {
	"diff",
	colored = false,
	symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
  cond = hide_in_width,
	separator = {
		left = "A",
	}
}

local mode = {
	"mode",
	fmt = function(str)
		return str
	end,
}


local branch = {
	"branch",
	icons_enabled = true,
	icon = "",
}

local objectStatus = {
	function()
		if navic.is_available then
			return navic.get_location()
		else
			return
		end
	end,
}


local lspStatus = {
	-- Lsp server name .
  function()
    local msg = 'No Active Lsp'
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then
      return msg
    end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
    return msg
  end,
  icon = ' LSP:',
  color = { fg = 'black', gui = 'bold' },

}


local spaces = function()
	return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
end

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = { "alpha", "dashboard", "NvimTree", "Outline" },
		always_divide_middle = true,
	},
	sections = {
		lualine_a = { branch, diagnostics,},
		lualine_b = { mode, },
		lualine_c = { objectStatus },
		-- lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_x = { spaces, 'filetype' },
        lualine_y = { "location" },
		lualine_z = { "progress", lspStatus },
	},
	inactive_sections = {
		lualine_a = { "filename", "filetype" },
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = {},
})

