vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.cmd('colorscheme github')

local transparent = {
    'Normal',
    'LineNr',
    'Folded',
    'NonText',
    'SpecialKey',
    'SignColumn',
    'EndOfBuffer',
    'CursorLine',
    'CursorLineNr'
}

for i = 1, #transparent do
    vim.cmd('hi ' .. transparent[i] .. ' guibg=NONE ctermbg=NONE')
end
