set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
"Plugin 'Valloric/YouCompleteMe'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


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
"autocompletion
imap <Tab> <C-P>
set complete=.,b,u,]

"disabled stuff for pathogen
let g:pathogen_disabled = ['detectindent', 'detectindent.vim']

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
"brew install ripgrep
if executable('rg')
    let g:ackprg = 'rg --vimgrep --no-heading'
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
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|dist\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
"end for ctrlp
"
"for Session
let g:session_autoload = 'no'
let g:session_autosave_periodic = 1
let g:session_autosave_silent = 1
let g:session_autosave = 'yes'

"end for Session
"for nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"end nerdtree
"

try
    colorscheme koehler 
catch
endtry

"Notes
"vert(optional) sb# to split buffer
