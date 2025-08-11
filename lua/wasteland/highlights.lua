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

	-- Apply highlights using vim commands
	vim.cmd(string.format("hi Normal guifg=%s guibg=%s", colors.text, colors.base))
	vim.cmd(string.format("hi NormalFloat guifg=%s guibg=%s", colors.text, colors.surface))
	vim.cmd(string.format("hi NormalNC guifg=%s guibg=%s", colors.text, colors.base))

	-- Cursor and selection
	vim.cmd(string.format("hi Cursor guifg=%s guibg=%s", colors.base, colors.glow))
	vim.cmd(string.format("hi CursorLine guibg=%s", colors.highlightLow))
	vim.cmd(string.format("hi CursorLineNr guifg=%s gui=bold", colors.glow))
	vim.cmd(string.format("hi LineNr guifg=%s", colors.muted))
	vim.cmd(string.format("hi Visual guibg=%s", colors.overlay))
	vim.cmd(string.format("hi VisualNOS guibg=%s", colors.overlay))

	-- Search
	vim.cmd(string.format("hi Search guifg=%s guibg=%s", colors.base, colors.warn))
	vim.cmd(string.format("hi IncSearch guifg=%s guibg=%s", colors.base, colors.glow))

	-- Syntax highlighting
	vim.cmd(string.format("hi Comment guifg=%s gui=italic", colors.muted))
	vim.cmd(string.format("hi Constant guifg=%s", colors.burnt))
	vim.cmd(string.format("hi String guifg=%s", colors.ok))
	vim.cmd(string.format("hi Character guifg=%s", colors.ok))
	vim.cmd(string.format("hi Number guifg=%s", colors.burnt))
	vim.cmd(string.format("hi Boolean guifg=%s", colors.burnt))
	vim.cmd(string.format("hi Float guifg=%s", colors.burnt))

	vim.cmd(string.format("hi Identifier guifg=%s", colors.text))
	vim.cmd(string.format("hi Function guifg=%s", colors.glow))

	vim.cmd(string.format("hi Statement guifg=%s", colors.rust))
	vim.cmd(string.format("hi Conditional guifg=%s", colors.rust))
	vim.cmd(string.format("hi Repeat guifg=%s", colors.rust))
	vim.cmd(string.format("hi Label guifg=%s", colors.rust))
	vim.cmd(string.format("hi Operator guifg=%s", colors.text))
	vim.cmd(string.format("hi Keyword guifg=%s", colors.rust))
	vim.cmd(string.format("hi Exception guifg=%s", colors.rust))

	vim.cmd(string.format("hi PreProc guifg=%s", colors.warn))
	vim.cmd(string.format("hi Include guifg=%s", colors.warn))
	vim.cmd(string.format("hi Define guifg=%s", colors.warn))
	vim.cmd(string.format("hi Macro guifg=%s", colors.warn))
	vim.cmd(string.format("hi PreCondit guifg=%s", colors.warn))

	vim.cmd(string.format("hi Type guifg=%s", colors.glow))
	vim.cmd(string.format("hi StorageClass guifg=%s", colors.glow))
	vim.cmd(string.format("hi Structure guifg=%s", colors.glow))
	vim.cmd(string.format("hi Typedef guifg=%s", colors.glow))

	vim.cmd(string.format("hi Special guifg=%s", colors.burnt))
	vim.cmd(string.format("hi SpecialChar guifg=%s", colors.burnt))
	vim.cmd(string.format("hi Tag guifg=%s", colors.burnt))
	vim.cmd(string.format("hi Delimiter guifg=%s", colors.text))
	vim.cmd(string.format("hi SpecialComment guifg=%s", colors.muted))
	vim.cmd(string.format("hi Debug guifg=%s", colors.err))

	-- UI elements
	vim.cmd(string.format("hi Pmenu guifg=%s guibg=%s", colors.text, colors.surface))
	vim.cmd(string.format("hi PmenuSel guifg=%s guibg=%s", colors.base, colors.glow))
	vim.cmd(string.format("hi PmenuSbar guibg=%s", colors.overlay))
	vim.cmd(string.format("hi PmenuThumb guibg=%s", colors.muted))

	vim.cmd(string.format("hi StatusLine guifg=%s guibg=%s", colors.text, colors.surface))
	vim.cmd(string.format("hi StatusLineNC guifg=%s guibg=%s", colors.muted, colors.surface))

	vim.cmd(string.format("hi TabLine guifg=%s guibg=%s", colors.muted, colors.surface))
	vim.cmd(string.format("hi TabLineSel guifg=%s guibg=%s", colors.glow, colors.base))
	vim.cmd(string.format("hi TabLineFill guibg=%s", colors.surface))

	-- Splits and windows
	vim.cmd(string.format("hi VertSplit guifg=%s", colors.overlay))
	vim.cmd(string.format("hi WinSeparator guifg=%s", colors.overlay))

	-- Diagnostics
	vim.cmd(string.format("hi DiagnosticError guifg=%s", colors.err))
	vim.cmd(string.format("hi DiagnosticWarn guifg=%s", colors.warn))
	vim.cmd(string.format("hi DiagnosticInfo guifg=%s", colors.glow))
	vim.cmd(string.format("hi DiagnosticHint guifg=%s", colors.muted))

	-- Git signs
	vim.cmd(string.format("hi GitSignsAdd guifg=%s", colors.ok))
	vim.cmd(string.format("hi GitSignsChange guifg=%s", colors.warn))
	vim.cmd(string.format("hi GitSignsDelete guifg=%s", colors.err))

	-- LazyVim Dashboard (THE KEY PART!)
	vim.cmd(string.format("hi LazyH1 guifg=%s gui=bold", colors.glow))
	vim.cmd(string.format("hi LazyH2 guifg=%s gui=bold", colors.rust))
	vim.cmd(string.format("hi LazyButton guifg=%s guibg=%s", colors.text, colors.overlay))
	vim.cmd(string.format("hi LazyButtonActive guifg=%s guibg=%s gui=bold", colors.base, colors.glow))
	vim.cmd(string.format("hi LazySpecial guifg=%s", colors.burnt))
	vim.cmd(string.format("hi LazyDir guifg=%s", colors.ok))
	vim.cmd(string.format("hi LazyUrl guifg=%s gui=underline", colors.glow))
	vim.cmd(string.format("hi LazyCommit guifg=%s", colors.muted))
	vim.cmd(string.format("hi LazyNormal guifg=%s guibg=%s", colors.text, colors.base))
	vim.cmd(string.format("hi LazyValue guifg=%s", colors.burnt))
	vim.cmd(string.format("hi LazyComment guifg=%s gui=italic", colors.muted))
	vim.cmd(string.format("hi LazyProp guifg=%s", colors.text))
	vim.cmd(string.format("hi LazyReasonPlugin guifg=%s", colors.glow))
	vim.cmd(string.format("hi LazyReasonEvent guifg=%s", colors.warn))
	vim.cmd(string.format("hi LazyReasonKeys guifg=%s", colors.ok))
	vim.cmd(string.format("hi LazyReasonStart guifg=%s", colors.rust))
	vim.cmd(string.format("hi LazyReasonSource guifg=%s", colors.burnt))
	vim.cmd(string.format("hi LazyReasonFt guifg=%s", colors.muted))
	vim.cmd(string.format("hi LazyReasonCmd guifg=%s", colors.text))
	vim.cmd(string.format("hi LazyReasonImport guifg=%s", colors.glow))
end

return M
