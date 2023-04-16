local M = {}

-- local colors = {
-- 	grey = "(100,100,100)",
-- 	green = "(0,100,0)",
-- }
local navic = require "nvim-navic"
-- local utils = require "utils"

-- vim.api.nvim_set_hl(0, "WinBarSeparator", { fg = grey })
-- vim.api.nvim_set_hl(0, "WinBarFilename", { fg = green, bg = grey })
-- vim.api.nvim_set_hl(0, "WinBarContext", {fg = grey })

M.winbar_filetype_exclude = {
  "help",
  "startify",
  "dashboard",
  "packer",
  "neogitstatus",
  "NvimTree",
  "Trouble",
  "alpha",
  "lir",
  "Outline",
  "spectre_panel",
  "toggleterm",
}

local excludes = function()
  if vim.tbl_contains(M.winbar_filetype_exclude, vim.bo.filetype) then
    vim.opt_local.winbar = nil
    return true
  end
  return false
end

-- local excludes = function()
-- 	return false
-- end

local function get_modified()
	local mod = ""
	-- local filepath = vim.fn.expand('%')
	-- local filepath = vim.fn.expand('%:p')
	-- local filepath = string.upper(vim.fn.expand("%:e"))
	local filepath = string.upper(vim.bo.filetype)
	-- local filepath = ""
	-- return "   " .. filepath .. mod .. " " .. "%*"
	return "   " .. filepath .. mod .. " "
end

local function get_location()
  local location = navic.get_location()
	-- return "%#WinBarContext#" .. "" ..  location .. "%*"
	return "%#WinBarContext#" .. "" ..  location
end

function M.get_winbar()
  if excludes() then
		return " "
  end
  if navic.is_available() then
    -- return "%#WinBarSeparator#" .. "%=" .. "%*" .. "%*" .. get_modified() .. get_location() .. "%#WinBarSeparator#" .. "%*"
    return "" .. get_modified() .. " 〉" .. get_location()  .. "  "
  end
end


-- maybe next time remove the comments because they are fucking useless and make the line number very high

return M
