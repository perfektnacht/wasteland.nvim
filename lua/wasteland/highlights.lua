local colors = require("wasteland.colors")

local M = {}

function M.setup(opts)
	-- Reset colors
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.g.colors_name = "wasteland"
	vim.o.background = "dark"
	vim.o.termguicolors = true

	-- Apply all your highlight groups here
	-- (Use the highlights from the previous artifact)
end

return M
