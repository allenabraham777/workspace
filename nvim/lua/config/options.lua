local opt = vim.opt

-- line number
opt.relativenumber = true
opt.number = true

-- indententation
opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

-- line wrappng
opt.wrap = true
opt.linebreak = true
opt.textwidth = 80
opt.wrapmargin = 0

opt.ignorecase = true
opt.smartcase = true

-- cursorline
opt.cursorline = true

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- dash as part of word
opt.iskeyword:append("-")

-- remove ~ in unused lines
vim.wo.fillchars = "eob: "
