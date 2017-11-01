set so=7
set cursorline
set number
set ruler
set cmdheight=2
"set smarttab
"set autoindent
"set smartindent
set wrap
set ignorecase
set smartcase
set relativenumber
set backspace=indent,eol,start
set laststatus=2
set statusline+=%F
set wildmenu
"set tabstop=4
"set softtabstop=4
"set shiftwidth=4
set list
"set listchars=tab:>-
execute pathogen#infect()
"syntax on this one overrides current settings
syntax enable
filetype plugin indent on

"for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"end for syntastic

"for ack.vim
cnoreabbrev Ack Ack! --smart-case
nnoremap <leader>a ":Ack!<Space>--smart-case"

if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif
"end for ack.vim

"for vim-airline
"Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
"Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

set hidden
"tabline for one tab to show all
let g:airline#extensions#tabline#enabled = 1
"theme
"let g:airline_theme='angr'
let g:airline_theme='bubblegum'
"end for vim-airline
"
"for ctrlp
let g:ctrlp_max_files = 0
"end for ctrlp
"
"for Session
let g:session_autoload = 'no'
let g:session_autosave_periodic = 1
let g:session_autosave_silent = 1

"end for Session
"for nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"end nerdtree

try
    colorscheme koehler 
catch
endtry

"Notes
"vert(optional) sb# to split buffer
