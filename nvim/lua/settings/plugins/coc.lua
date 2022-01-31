local mappings = {
    leader = {
        {key = 'gd', action = '<Plug>(coc-definition)', opts = {silent = true}},
        {key = 'gy', action = '<Plug>(coc-type-definition)', opts = {silent = true}},
        {key = 'gi', action = '<Plug>(coc-implementation)', opts = {silent = true}},
        {key = 'gr', action = '<Plug>(coc-references)', opts = {silent = true}},
        {key = 'f', action = '<Plug>(coc-format-selected)'},
        {key = 'rn', action = '<Plug>(coc-rename)'},
        {key = 'ac', action = '<Plug>(coc-codeaction)'},
        {key = 'cs', action = ':Format<cr>'}
    },
    normal = {
        {key = 'K', action = ":call CocAction('doHover')<cr>", opts = {silent = true}}
    },
    visual = {
        {key = '<leader>f', action = '<Plug>(coc-format-selected)'}
    }
}

vim.cmd("command! -nargs=0 Format :call CocAction('format')")
vim.cmd("command! -nargs=0 Order :call CocAction('runCommand', 'editor.action.organizeImport')")

vim.g.coc_snippet_next = '<c-j>'
vim.g.coc_snippet_prev = '<c-k>'

local Mapper = require('modules/Mapper')
mapper = Mapper:new(mappings)
mapper:map()
