" Setup stuff
if !has ('g:syntax_on')
    syntax enable
endif
set viminfo+=n~/.vim/viminfo
set mouse=a

" Map Leader
let mapleader = ","     " , is the map leader key
let g:mapleader = ","   " , is the map leader key

so ~/.vim/plugins.vim

" Colors
colorscheme gruvbox
set background=dark
let &t_ut=''
set cursorline                              " highlight cursor line
highlight CursorLine term=bold cterm=bold ctermbg=237
set t_Co=256

" Formatting, syntax and displaying
set autoindent
set smartindent
set formatoptions=qrn1
set tabstop=2
set shiftwidth=2
set expandtab
set wrap
set nofixendofline
set textwidth=79
set history=50
set scrolloff=3
set laststatus=2
set hidden
set backspace=indent,eol,start
set number
set relativenumber
set showcmd
set cmdheight=2
set wildmenu
set wildmode=full
set lazyredraw
set showmatch
set infercase
set smartcase
set gdefault
set synmaxcol=350
set signcolumn=yes

" Functionality
set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c

let &t_SI = "\e[6 q"
let &t_EI = "\e[1 q"

" Optionally reset the cursor on start:
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

" Swap Files
if isdirectory($HOME . '/.vim/swap') == 0
    :silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
endif
set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.

" Undo Files
if exists("+undofile")
    if isdirectory($HOME . '/.vim/undo') == 0
        :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
    endif
    set undodir=./.vim-undo//
    set undodir+=~/.vim/undo//
    set undofile
endif

" Search
set hlsearch
set incsearch

" Autocomplete
set complete=.,w,b,u,t,i

" Folding
set foldenable
set foldmethod=indent
set foldcolumn=2
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za

" Auto Commands
" Auto load vimrc on save
augroup autosourcing
    autocmd!
    autocmd BufWritePost vimrc source ~/.vimrc 
augroup END

" General remappings
nnoremap <leader><space> :nohl<CR>
noremap <leader>q :bp<CR>
noremap <leader>w :bn<CR>

nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

inoremap <silent><expr> <c-space> coc#refresh()

function! TogglePaste()
    if(&paste == 0)
        set paste
    else
        set nopaste
    endif
endfunction

map <leader>p :call TogglePaste()<cr>

au BufRead,BufNewFile *.blade.php set filetype=html
au BufRead,BufNewFile filetype php set filetype=html


" Notes
" - zz to center screen
" - :! issue CLI commands
" - :!ctags -R to remake ctags
" - Ctrl + ] to go to method with ctags
" - Ctrl + 6 to go back to where the method was first seen
