vim.cmd [[
    function! PHPModify(transformer)
        :update
        let cmd = "silent !".g:phpactor_executable." class:transform ".expand('%').' --transform='.a:transformer

        execute cmd
    endfunction
]]

vim.g.phpactor_executable = '~/.local/share/nvim/plugged/phpactor/bin/phpactor'

local mappings = {
    leader = {
        {key = 'pac', action = ':call phpactor#ContextMenu()<cr>'},
        {key = 'rcc', action = ':call PHPModify("complete_constructor")<cr>'},
        {key = 'rii', action = ':PhpactorClassInflect<cr>'}
    }
}

local Mapper = require('modules.Mapper')
mapper = Mapper:new(mappings)

mapper:map()

