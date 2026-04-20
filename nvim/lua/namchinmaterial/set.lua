local opt = vim.opt

opt.guicursor = ""
opt.termguicolors = true

opt.nu = true
opt.relativenumber = true
opt.cursorline = true

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

opt.smartindent = true
opt.autoindent = true

opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undofile = true

opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true

opt.termguicolors = true

opt.scrolloff = 10
opt.signcolumn = "yes"
opt.isfname:append("@-@")
opt.iskeyword:append("-")
opt.selection = "inclusive"

opt.backspace = { "start", "eol", "indent" }

opt.updatetime = 50
opt.colorcolumn = "80"
opt.showmode = false

opt.autoread = true
opt.autowrite = false

opt.foldmethod = "expr"
opt.foldlevel = 99

opt.clipboard:append("unnamedplus")
opt.mouse = ""
