local opt = vim.opt -- for conciness
vim.cmd("let g:netrw_liststyle =3 ")
-- comments
opt.relativenumber = true
opt.number = true
-- tabs and identations
opt.tabstop = 4
opt.shiftwidth = 4 --2
opt.expandtab = true
opt.autoindent = true
--line wrap
opt.wrap = false
--search settings
opt.ignorecase = true
opt.smartcase = true
--cursor line
opt.cursorline = true
--appereance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
--backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamedplus")
--split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
