local M = {}

-- M.color = {}

M.color = {}
local list = vim.api.nvim_get_hl_by_name("StatusLine", true)
for k, v in pairs(list) do
	local name = k == "background" and "bg" or "fg"
	M.color[name] = string.format("#%06x", v)
end

-- M.color = {
--     bg = M.fromhl("StatusLine").bg,
--     --nvimtreebg = fromhl("NvimTreeNormal").bg,
-- }

return M
