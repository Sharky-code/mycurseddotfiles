local ok, tele = pcall(require, "telescope")
if not ok then
	return
end

tele.setup {}
