" vim-plug section
call plug#begin('~/.vim/autoload/')
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'vim-syntastic/syntastic'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'Yggdroot/indentLine'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'jparise/vim-graphql'
Plug 'eslint/eslint'
Plug 'ekalinin/Dockerfile.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

" coc extensions
let g:coc_global_extensions = ['coc-tsserver']
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Golang
let g:go_def_mapping_enabled = 0

" Gruvbox color theme
let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_improved_strings = 1
let g:gruvbox_improved_warnings = 1

" lightline
let g:lightline = {
            \ 'colorscheme': 'gruvbox',
            \ 'active': {
            \   'left': [[ 'mode', 'paste'],
            \       ['gitbranch', 'readonly', 'relativepath', 'modified']],
            \   'right': [['lineinfo'],
            \       ['percent'],
            \       ['fileformat', 'fileencoding', 'filetype']]
            \ },
            \ 'component_function': {
            \   'gitbranch': 'fugitive#head'
            \ }
            \ }

" NERDTree
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeMapActivateNode='<space>'
nnoremap <leader>n :NERDTreeToggle<CR>

" Finder and fzf
nmap - :Buffers<CR>
nmap <C-P> :Files<CR>
nmap <Leader>t :Tags<CR>

let g:fzf_layout = { 'down': '~30%' }
let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'split',
            \ 'ctrl-v': 'vsplit' }

let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }
