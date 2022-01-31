local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.local/share/nvim/plugged')

    -- colorscheme
    Plug 'cormacrelf/vim-colors-github'

    -- quality of life
    Plug 'tpope/vim-vinegar'
    Plug 'mtth/scratch.vim'
    Plug 'tpope/vim-commentary'

    -- fuzzy find
    Plug('junegunn/fzf', {dir = '~/.local/share/fzf', ['do'] = './install --all'})
    Plug 'junegunn/fzf.vim'

    -- dev tools
    Plug 'vim-vdebug/vdebug'
    Plug 'majutsushi/tagbar'
    Plug 'Rican7/php-doc-modded'
    Plug 'nicwest/vim-http'
    Plug 'tpope/vim-dadbod'
    Plug 'scrooloose/vim-slumlord'
    Plug 'aklt/plantuml-syntax'
    Plug('phpactor/phpactor', {branch = 'master', ['do'] = 'composer install --no-dev -o'})
    Plug('alvan/vim-php-manual', {['for'] = 'php'})

    -- Syntax
    Plug 'StanAngeloff/php.vim'
    Plug 'leafgarland/typescript-vim'
    Plug 'posva/vim-vue'
    Plug 'plasticboy/vim-markdown'
    Plug 'udalov/kotlin-vim'

    -- Git
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'

    -- Autocompletion
    Plug('neoclide/coc.nvim', {branch = 'release'})
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'

vim.call('plug#end')

require('settings.plugins.colorscheme')
require('settings.plugins.phpactor')
require('settings.plugins.coc')
require('settings.plugins.vdebug')
require('settings.plugins.misc')
