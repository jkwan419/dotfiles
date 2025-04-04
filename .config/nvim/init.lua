local opt = vim.opt

vim.g.mapleader = " "

vim.g.clipboard = {
	name = "win32yank",
	copy = {
		["+"] = "win32yank.exe -i --crlf",
		["*"] = "win32yank.exe -i --crlf",
	}, 
	paste = {
		["+"] = "win32yank.exe -o --lf",
		["*"] = "win32yank.exe -o --lf",
	},
	cache_enabled = 0,
}
opt.clipboard = "unnamedplus"

-- encoding

opt.autoindent = true
opt.backspace = { "indent", "eof", "start" }
opt.breakindent = true
opt.cmdheight = 1
opt.cursorline = true
opt.encoding = "utf-8"
opt.expandtab = true
opt.fileencoding = "utf-8"
opt.hlsearch = false
opt.ignorecase = true
opt.conceallevel = 0
opt.inccommand = "split"
opt.mouse = ""
opt.number = true
opt.relativenumber = true
opt.scrolloff = 10
opt.shiftwidth = 2
opt.showmode = false
opt.signcolumn = "yes"
opt.smartindent = true
opt.softtabstop = 0
opt.splitright = true
opt.splitbelow = true
opt.splitkeep = "cursor"
opt.tabstop = 2
opt.wrap = false
