:set number
:set autoindent
:set smarttab
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set mouse=a

call plug#begin('C:\Users\antoi\AppData\Local\nvim\plugged')
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'mhinz/vim-startify'
Plug 'sheerun/vim-polyglot'
Plug 'plasticboy/vim-markdown'
Plug 'jiangmiao/auto-pairs'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'https://github.com/leafgarland/typescript-vim'
Plug 'https://github.com/danilo-augusto/vim-afterglow'
Plug 'Pocco81/true-zen.nvim'
call plug#end()

nnoremap <C-y> :NERDTreeFocus<CR>

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif



" startify

let g:ascii = [
\ '                                          _',         
\ '                   ____  ___  ____ _   __(_)___ ___', 
\ '                  / __ \/ _ \/ __ \ | / / / __ `__ \',
\ '                 / / / /  __/ /_/ / |/ / / / / / / /',
\ '                /_/ /_/\___/\____/|___/_/_/ /_/ /_/',
\ '                '
\]
let g:startify_custom_header = g:ascii + startify#fortune#quote()
let g:startify_session_dir = 'C:\Users\antoi\dev\sessions'
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]
let g:startify_bookmarks = [ {'c': '~/AppData/Local/nvim/init.vim'}]

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"""" enable 24bit true color
set termguicolors

"""" enable the theme
syntax enable

colorscheme afterglow
hi Normal guibg=NONE ctermbg=NONE
