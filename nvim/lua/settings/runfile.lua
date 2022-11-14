local M = {}

M.hi = function(input1, input2)
	
	--try and do this with an for loop. im not good with lua :(
	input1 = string.gsub(input1, "\\\\", "\\\\\\\\")
	input2 = string.gsub(input2, "\\\\", "\\\\\\\\")
	input1 = string.gsub(input1, " ", "\\\\ ")
	input2 = string.gsub(input2, " ", "\\\\ ")
	input1 = string.gsub(input1, "%(", "\\\\%(")
	input2 = string.gsub(input2, "%(", "\\\\%(")
	input1 = string.gsub(input1, "%)", "\\\\%)")
	input2 = string.gsub(input2, "%)", "\\\\%)")

	vim.cmd(string.format(':w %s', input1))

	if vim.bo.filetype == "python" then
		vim.cmd(string.format(":TermExec cmd=';python3 %s'", input1, input1))
	elseif vim.bo.filetype == "cpp" then
		vim.cmd(string.format(":TermExec cmd=';g++ -std=c++20 -o %s %s ; ./%s'", input2, input1, input2))
	elseif vim.bo.filetype == "lua" then
		vim.cmd(string.format(":TermExec cmd='lua %s'", input1))
	elseif vim.bo.filetype == "c" then
		vim.cmd(string.format(":TermExec cmd=';gcc -o %s %s; ./%s'", input2, input1, input2))
	elseif vim.bo.filetype == "js" then
		vim.cmd(string.format(":TermExec cmd=';node %s'", input1))
	else
		print("your file cannot be run with this plugin")
	end

end

return M
