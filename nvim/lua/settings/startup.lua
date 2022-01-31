vim.cmd('filetype plugin on')
vim.cmd('set nocompatible')

local FileSystem = require('modules.FileSystem')

FileSystem.swap('.local/nvim/swap')
FileSystem.undo('.local/nvim/undo')
