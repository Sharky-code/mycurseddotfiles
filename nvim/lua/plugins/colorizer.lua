local ok, x = pcall(require, 'colorizer')
if not ok then
	return
end

x.setup()
