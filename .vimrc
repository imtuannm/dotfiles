"**************************************************************************
"" Basic Setup
"**************************************************************************
"" Colorscheme
syntax enable

colorscheme nord

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

set ttyfast
set noesckeys

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overridden by autocmd rules
set tabstop=4     " use 4 spaces to represent tab
set softtabstop=0
set shiftwidth=4  " number of spaces to use for auto indent
set expandtab     " enter spaces when tab is pressed

"" Map leader to ,
let mapleader=','

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set fileformats=unix,dos

" Show line numbers
set number

" Turn off modelines
set modelines=0

"" Dim NonText and SpecialKey
highlight NonText ctermfg=8
highlight SpecialKey ctermfg=8

"" Show spaces
set listchars+=space:·
set listchars+=tab:→\ ,trail:·
set invlist


"**************************************************************************
"" Status Lines
"**************************************************************************
set laststatus=2        " always on
set statusline=

hi NormalColor ctermbg=Gray ctermfg=Black
hi NormalColorBackgound ctermbg=DarkGray ctermfg=Black
hi InsertColor ctermbg=Green ctermfg=Black
hi ReplaceColor ctermbg=Yellow ctermfg=Black
hi VisualColor ctermbg=Brown ctermfg=Black

" Automatically change the statusline color depending on mode
set statusline+=%#NormalColor#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#InsertColor#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#ReplaceColor#%{(mode()=='R')?'\ \ REPLACE\ ':''}
set statusline+=%#VisualColor#%{(mode()=='v')?'\ \ VISUAL\ ':''}

set statusline+=%#NormalColorBackgound#%{''}
set statusline+=\ %<%f             " Filename
set statusline+=%m%r%h%w           " Modified, readonly, helpfile, preview

set statusline+=%=                 " Switch to the right side
"set statusline+=%b,0x%-6B\        " Current char
set statusline+=\ %y               " File type
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]\ 
set statusline+=\ %#NormalColor#%{''}
set statusline+=\ %p%%\ \☰\ %l\/%L\ ln\ \:\ %c\ 
