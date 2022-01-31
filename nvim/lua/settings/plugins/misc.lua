vim.opt.updatetime = 100

vim.g.vim_markdown_folding_disabled = 1
vim.g.php_manual_online_search_shortcut = '<leader>k'

local mappings = {
    leader = {
        {key = 'tt', action = ':TagbarToggle<cr>'},
        {key = 'ss', action = ':Ag<cr>'}
    }
}

local Mapper = require('modules.Mapper')
mapper = Mapper:new(mappings)
mapper:map()
