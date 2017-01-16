set so=7
set cursorline
set number
set ruler
set cmdheight=2
set smarttab
set ai
set si
set wrap
set ignorecase
set smartcase
set expandtab
set relativenumber
set backspace=indent,eol,start
set autoindent
set laststatus=2
set wildmenu
set tabstop=4
set softtabstop=4
set shiftwidth=4
"inoremap { {}<Left>
"inoremap{<CR> {<CR>}<Esc>0
"inoremap {{ {
"inoremap {} {}
noremap ; l
noremap l k
noremap k j
noremap j h
syntax enable

try
    colorscheme koehler 
catch
endtry
