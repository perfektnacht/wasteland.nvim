local M = {}

function M.setup(opts)
	require("wasteland.highlights").setup(opts or {})
end

function M.load()
	M.setup()
end

return M
