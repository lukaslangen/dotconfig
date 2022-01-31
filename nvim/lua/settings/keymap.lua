local mappings = {
    leader = {
        {key = 'fs', action = ':up<cr>'},
        {key = 'rv', action = ':source ~/.config/nvim/init.lua<cr>'},
        {key = '<space>', action = ':nohlsearch<cr>', opts = {silent = true}},
        {key = 'bb', action = ':Buffers<cr>'},
        {key = 'ff', action = ':Files<cr>'},
        {key = 'jk', action = 'mmA;<esc>`m'}, -- add ; to the end of line and jump back to previous position in normal mode
    },
    normal = {
        {key = 'j', action = 'gj'},
        {key = 'k', action = 'gk'}
    },
    insert = {
        {key = 'jj', action = '<esc>'},
        {key = '<C-o>', action = '<esc>o'},
        {key = 'jk', action = '<esc>mmA;<esc>`ma'}, -- add ; to the end of line and jump back to previous position in insert mode
    },
    terminal = {
        {key = 'jj', action = '<C-\\><C-n>'} -- this does not work right now. Needs to be fixed
    }
}

local Mapper = require('modules.Mapper')
mapper = Mapper:new(mappings)

mapper:map()
