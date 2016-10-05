execute pathogen#infect()
call pathogen#helptags()

set t_Co=256
let g:solarized_termcolors=256
let g:solarized_visibility="high"
set background=dark
colors solarized
"colorscheme molokai

set hidden
set nu

set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=2
set expandtab

set autoindent
set smartindent

"search
set ignorecase
set smartcase
set incsearch
set viminfo+="h"

set ruler

set nobackup
set noswapfile

set number
set relativenumber

let mapleader=","
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>eb :vsp ~/.bashrc<CR>

set list listchars=tab:>-,trail:.,precedes:<,extends:>
map <C-F12> :let &list=!&list<CR>

map <F12> :let &number=!&number<CR> :let &relativenumber=!&relativenumber<CR>

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

set cursorline
set cursorcolumn

"hi Visual term=reverse cterm=reverse guibg=Gray

" ag search
set grepprg=ag\ --nogroup\ --nocolor
"bind K to grep word under cursor
nnoremap K :grep! "\b<C-r><C-w>\b"<CR>:cw<CR>
""bind F to grep shortcut
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap F :Ag<SPACE>


"airline
"set ttimeoutlen=50
""let g:airline_theme = 'powerlineish'
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1
if !has("gui_running")
    let g:airline#extensions#tabline#enabled = 1
endif

let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#fnamemod = ':p:t'
let g:airline#extensions#tabline#close_symbol = '×'
let g:airline#extensions#tabline#show_close_button = 0
let g:airline_exclude_preview = 1

"syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"for ctrlspace
"let g:CtrlSpaceStatuslineFunction =
""airline#extensions#ctrlspace#statusline()"
