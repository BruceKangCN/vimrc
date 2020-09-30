set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tomasiser/vim-code-dark'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'honza/vim-snippets'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'jiangmiao/auto-pairs'
Plug 'vim/killersheep'

" All of your Plugins must be added before the following line
call plug#end()

let g:coc_global_extensions=['coc-cmake', 'coc-json', 'coc-python', 'coc-html', 'coc-tsserver', 'coc-snippets', 'coc-highlight']

let g:cpp_class_scope_highlight=1
let g:cpp_member_variable_highlight=1
let g:cpp_class_decl_highlight=1
let g:cpp_posix_standard=1
let g:cpp_experimental_simple_template_highlight=1
let g:cpp_concepts_highlight=1

" coc completion settings
inoremap <silent><expr> <TAB>
    \ pumvisible()? coc#_select_confirm() :
    \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
    \ <SID>check_back_space()? "\<TAB>" :
    \ coc#refresh()

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~# '\s'
endfunction

let g:coc_snippet_next='<tab>'

filetype plugin indent on

set t_Co=256
nmap a i
set t_ut=
colorscheme codedark
set laststatus=2
set nowrap

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set nu
set smartindent

set cursorline
set cc=81

let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
let g:airline_section_z='%l:%c / %L'
set ttimeoutlen=10

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

