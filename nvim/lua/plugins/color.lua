local ok, _ = pcall(require, 'transparent')
if not ok then
	return
end

local aok, _ = pcall(require, 'lush')
if not aok then
	return
end

require('transparent').setup{}
