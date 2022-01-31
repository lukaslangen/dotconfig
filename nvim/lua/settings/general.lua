local opt = vim.opt

opt.number         = true -- set line numbers
opt.relativenumber = true -- set relative line numbers

opt.cursorline  = true -- show cursorline
opt.scrolloff   = 5 -- stay x lines over/under top/bottom of terminal

opt.wrap        = false -- don't wrap lines by default
opt.showmatch   = true -- highlight matching [{()}]

-- <tab> behaviour settings
opt.expandtab   = true
opt.smarttab    = true
opt.shiftround  = true
opt.tabstop     = 4
opt.softtabstop = 8
opt.shiftwidth  = 4
opt.autoindent  = true

-- search settings
opt.ignorecase     = true -- ignore case while searching
opt.smartcase      = true -- don't ignore case if uppercase letters are present
opt.fileignorecase = true -- ignore case while searching for files
opt.incsearch      = true -- search as characters are entered

-- netrw settings
vim.cmd([[
    let g:netrw_liststyle = 4
    let g:netrw_banner = 0
]])

-- python settings
vim.g.python3_host_prog = '/usr/bin/python3'
