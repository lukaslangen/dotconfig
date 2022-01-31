vim.cmd [[
    if !exists("g:vdebug_options")
        let g:vdebug_options = {}
    endif
    let g:vdebug_options.break_on_open = 0

    if !exists("g:vdebug_features")
        let g:vdebug_features = {}
    endif
    let g:vdebug_features = { 'max_children': 512 }
]]
