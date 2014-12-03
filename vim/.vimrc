" Load scripts at startup
source ~/.vim/startup/neobundle.vim

" Use vim settings,
set nocompatible

" colors
syntax on
set  t_Co=256
"color skittles_berry 
color lucius
LuciusDarkLowContrast

" GVim 
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline
set guiheadroom=0

" Editing behaviour
set showmode
set nowrap
set tabstop=4
set softtabstop=4
set backspace=indent,eol,start
set number
set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch
set gdefault
set pastetoggle=<F2>
set mouse=a
set formatoptions+=1

" Editor layout
set termencoding=utf-8
set encoding=utf-8
set laststatus=2
set cmdheight=1
set noshowmode

" Vim behaviour
set history=1000
set undolevels=1000
set nobackup
set noswapfile
set wildmenu
set wildmode=list:full
set wildignore=*.swp,*.bak,*.pyc,*.class
set showcmd
set nomodeline
set cursorline
" Start in insert mode
"au BufRead,BufNewFile * start

" auto reload vimrc
autocmd BufWritePost .vimrc source %

" Shortcut mappings
nnoremap ; :
nnoremap H 0
nnoremap L $
" NerdTree
map <F2> :NERDTreeToggle<CR> 

" pulse search
nnoremap n n:call PulseCursorLine()<cr>
nnoremap N N:call PulseCursorLine()<cr>

" Quickly get out of insert mode
inoremap jj <Esc>

" Restore cursor position upon reopening files
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" cool cursor position indicator 

function! PulseCursorLine()
    let current_window = winnr()

    windo set nocursorline
    execute current_window . 'wincmd w'

    setlocal cursorline

    redir => old_hi
        silent execute 'hi CursorLine'
    redir END
    let old_hi = split(old_hi, '\n')[0]
    let old_hi = substitute(old_hi, 'xxx', '', '')

    hi CursorLine guibg=#3a3a3a
    redraw
    sleep 20m

    hi CursorLine guibg=#4a4a4a
    redraw
    sleep 30m

    hi CursorLine guibg=#3a3a3a
    redraw
    sleep 30m

    hi CursorLine guibg=#2a2a2a
    redraw
    sleep 20m

    execute 'hi ' . old_hi

    windo set cursorline
    execute current_window . 'wincmd w'
endfunction