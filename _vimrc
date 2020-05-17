"*****************************************************************************
"" Basic Setup
"*****************************************************************************
"" Colorscheme
syntax enable
colorscheme dracula

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overridden by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

"" Map leader to ,
let mapleader=','

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set fileformats=unix,dos,mac

" Show line numbers
set number

" Turn off modelines
set modelines=0

"" Dim NonText and SpecialKey
highlight NonText ctermfg=8 guifg=gray
highlight SpecialKey ctermfg=8 guifg=gray

"" Show spaces
set listchars+=space:·
set listchars+=tab:→\ ,trail:·
set invlist

"*****************************************************************************
"" Status Lines
"*****************************************************************************
set laststatus=2        " always on

set statusline=

" Automatically change the statusline color depending on mode
hi NormalColor guifg=Black guibg=Green ctermbg=46 ctermfg=0
hi InsertColor guifg=Black guibg=Cyan ctermbg=102 ctermfg=0
hi ReplaceColor guifg=Black guibg=maroon1 ctermbg=165 ctermfg=0
hi VisualColor guifg=Black guibg=Orange ctermbg=202 ctermfg=0
hi BackLineColor guibg=DarkGrey ctermfg=14 guifg=White ctermbg=8

set statusline+=%#NormalColor#%{(mode()=='n')?'NORMAL\ ':''}
set statusline+=%#InsertColor#%{(mode()=='i')?'INSERT\ ':''}
set statusline+=%#ReplaceColor#%{(mode()=='R')?'REPLACE\ ':''}
set statusline+=%#VisualColor#%{(mode()=='v')?'VISUAL\ ':''}

" reset color
set statusline+=%#BackLineColor#%{''}

set statusline+=\ %.50F
set statusline+=%=       " Switch to the right side
set statusline+=\ %y     " File type
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c/%L    " <Current line>:<Collum>/<Total lines>
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag3
