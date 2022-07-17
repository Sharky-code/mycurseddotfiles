local ok, gitsign = pcall(require, 'gitsigns')
if not ok then
	return
end

local gok, git = pcall(require, 'git')
if not gok then
	return
end

gitsign.setup {
	preview_config = {
		border = 'round',
	}
}

git.setup{}
