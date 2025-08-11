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

	local highlights = {
		-- Editor highlights
		Normal = { fg = colors.text, bg = colors.base },
		NormalFloat = { fg = colors.text, bg = colors.surface },
		NormalNC = { fg = colors.text, bg = colors.base },

		-- Cursor and selection
		Cursor = { fg = colors.base, bg = colors.glow },
		CursorLine = { bg = colors.highlightLow },
		CursorLineNr = { fg = colors.glow, bold = true },
		LineNr = { fg = colors.muted },
		Visual = { bg = colors.overlay },
		VisualNOS = { bg = colors.overlay },

		-- Search
		Search = { fg = colors.base, bg = colors.warn },
		IncSearch = { fg = colors.base, bg = colors.glow },

		-- Syntax highlighting
		Comment = { fg = colors.muted, italic = true },
		Constant = { fg = colors.burnt },
		String = { fg = colors.ok },
		Character = { fg = colors.ok },
		Number = { fg = colors.burnt },
		Boolean = { fg = colors.burnt },
		Float = { fg = colors.burnt },

		Identifier = { fg = colors.text },
		Function = { fg = colors.glow },

		Statement = { fg = colors.rust },
		Conditional = { fg = colors.rust },
		Repeat = { fg = colors.rust },
		Label = { fg = colors.rust },
		Operator = { fg = colors.text },
		Keyword = { fg = colors.rust },
		Exception = { fg = colors.rust },

		PreProc = { fg = colors.warn },
		Include = { fg = colors.warn },
		Define = { fg = colors.warn },
		Macro = { fg = colors.warn },
		PreCondit = { fg = colors.warn },

		Type = { fg = colors.glow },
		StorageClass = { fg = colors.glow },
		Structure = { fg = colors.glow },
		Typedef = { fg = colors.glow },

		Special = { fg = colors.burnt },
		SpecialChar = { fg = colors.burnt },
		Tag = { fg = colors.burnt },
		Delimiter = { fg = colors.text },
		SpecialComment = { fg = colors.muted },
		Debug = { fg = colors.err },

		-- UI elements
		Pmenu = { fg = colors.text, bg = colors.surface },
		PmenuSel = { fg = colors.base, bg = colors.glow },
		PmenuSbar = { bg = colors.overlay },
		PmenuThumb = { bg = colors.muted },

		StatusLine = { fg = colors.text, bg = colors.surface },
		StatusLineNC = { fg = colors.muted, bg = colors.surface },

		TabLine = { fg = colors.muted, bg = colors.surface },
		TabLineSel = { fg = colors.glow, bg = colors.base },
		TabLineFill = { bg = colors.surface },

		-- Splits and windows
		VertSplit = { fg = colors.overlay },
		WinSeparator = { fg = colors.overlay },

		-- Diagnostics
		DiagnosticError = { fg = colors.err },
		DiagnosticWarn = { fg = colors.warn },
		DiagnosticInfo = { fg = colors.glow },
		DiagnosticHint = { fg = colors.muted },

		-- Git signs
		GitSignsAdd = { fg = colors.ok },
		GitSignsChange = { fg = colors.warn },
		GitSignsDelete = { fg = colors.err },

		-- LazyVim Dashboard
		LazyH1 = { fg = colors.glow, bold = true },
		LazyH2 = { fg = colors.rust, bold = true },
		LazyButton = { fg = colors.text, bg = colors.overlay },
		LazyButtonActive = { fg = colors.base, bg = colors.glow, bold = true },
		LazySpecial = { fg = colors.burnt },
		LazyDir = { fg = colors.ok },
		LazyUrl = { fg = colors.glow, underline = true },
		LazyCommit = { fg = colors.muted },
		LazyNormal = { fg = colors.text, bg = colors.base },
		LazyValue = { fg = colors.burnt },
		LazyComment = { fg = colors.muted, italic = true },
		LazyProp = { fg = colors.text },
		LazyReasonPlugin = { fg = colors.glow },
		LazyReasonEvent = { fg = colors.warn },
		LazyReasonKeys = { fg = colors.ok },
		LazyReasonStart = { fg = colors.rust },
		LazyReasonSource = { fg = colors.burnt },
		LazyReasonFt = { fg = colors.muted },
		LazyReasonCmd = { fg = colors.text },
		LazyReasonImport = { fg = colors.glow },

		-- Tree-sitter highlights (modern syntax highlighting)
		["@comment"] = { fg = colors.muted, italic = true },
		["@constant"] = { fg = colors.burnt },
		["@constant.builtin"] = { fg = colors.burnt },
		["@string"] = { fg = colors.ok },
		["@number"] = { fg = colors.burnt },
		["@boolean"] = { fg = colors.burnt },
		["@function"] = { fg = colors.glow },
		["@function.builtin"] = { fg = colors.glow },
		["@keyword"] = { fg = colors.rust },
		["@keyword.function"] = { fg = colors.rust },
		["@type"] = { fg = colors.glow },
		["@variable"] = { fg = colors.text },
		["@variable.builtin"] = { fg = colors.burnt },
		["@operator"] = { fg = colors.text },
		["@punctuation"] = { fg = colors.text },

		-- LSP semantic tokens
		["@lsp.type.class"] = { fg = colors.glow },
		["@lsp.type.function"] = { fg = colors.glow },
		["@lsp.type.variable"] = { fg = colors.text },
		["@lsp.type.keyword"] = { fg = colors.rust },
	}

	-- Apply all highlights
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
