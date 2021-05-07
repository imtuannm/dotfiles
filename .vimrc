"*****************************************************************************
"" Basic Setup
"*****************************************************************************
" Enable Vim features instead of strict Vi compatibility
set nocompatible

"" Colorscheme
if !exists('g:os') && (has('win32') || has('win32unix'))
  set t_Co=256
  set t_ut="" " erase areas of the screen (BCE)
endif

syntax enable

try
  colorscheme gruvbox
  set background=dark
catch
  "silent! colorscheme
endtry

"" Display vertical lines
if exists('+colorcolumn')
  set colorcolumn=80,100
endif

"" Encodings
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Enable loading the plugin file for specific file types
filetype plugin on

" Speed up scrolling in Vim
set ttyfast

set noesckeys

" Fix backspace indent
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
set hlsearch   " highlight search terms
set incsearch  " show search matches as you type
set ignorecase " ignore case when searching
set smartcase  " ignore case if search pattern is all lowercase, case-sensitive otherwise

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

" Highlight the Current Line
set cursorline

" Flash its screen instead of sounding a beep
set visualbell


"*****************************************************************************
"" Finding Files:
"*****************************************************************************
"" Search down into subfolders
"" Provides tab-completion for all file-related tasks
set path+=**
set wildignore+=*/node_modules/*,_site,*/__pycache__/,*/venv/*,*/target/*,*/.vim$,\~$,*/.log,*/.aux,*/.cls,*/.aux,*/.bbl,*/.blg,*/.fls,*/.fdb*/,*/.toc,*/.out,*/.glo,*/.log,*/.ist,*/.fdb_latexmk

"" Display all matching files when we tab complete
set wildmenu


"*****************************************************************************
"" Status Lines
"*****************************************************************************
set laststatus=2        " always on
set statusline=

" Automatically change the statusline color depending on mode
hi NormalColor ctermbg=Gray ctermfg=Black
hi BackgoundColor ctermbg=DarkGray ctermfg=Black
hi HighlightedColor ctermbg=LightGray ctermfg=Black
hi InsertColor ctermbg=Green ctermfg=Black
hi VisualColor ctermbg=Brown ctermfg=Black
hi ReplaceColor ctermbg=Yellow ctermfg=Black

set statusline+=%#HighlightedColor#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#InsertColor#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#ReplaceColor#%{(mode()=='R')?'\ \ REPLACE\ ':''}
set statusline+=%#VisualColor#%{(mode()=='v')?'\ \ VISUAL\ ':''}

set statusline+=%#NormalColor#%{''}
set statusline+=\ %<%F\            " Filename, cut if needed at start

set statusline+=%#BackgoundColor#%{''}
set statusline+=\ %m%r%h%w         " Modified, readonly, helpfile, preview

set statusline+=%=                 " Switch to the right side
set statusline+=\ %y\              " File type

set statusline+=%#NormalColor#%{''}
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]\ 

set statusline+=%#HighlightedColor#%{''}
set statusline+=\ %p%%\ \☰\ %l\/%L\ ln\ \:\ %c\ 
