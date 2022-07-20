vim.cmd [[
    if !exists("g:vdebug_options")
        let g:vdebug_options = {}
    endif
    let g:vdebug_options.break_on_open = 0
    let g:vdebug_options["port"] = 9003

    if !exists("g:vdebug_features")
        let g:vdebug_features = {}
    endif
    let g:vdebug_features = { 'max_children': 512 }
]]
