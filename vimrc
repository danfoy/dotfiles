" =============================================================================
"
"                              VIM Configuration
"
" =============================================================================
"
" TABLE OF CONTENTS
" -----------------
"  1.   Mode Options
"  2.   Load Plugins
"  3.   Plugin Configuration
"  4.   Display Options
"  5.   Other Key Binding
"  6.   Tabs and Wrapping
"
"
" ==============================================================================
" 1. Mode Options
" ==============================================================================
set nocompatible                        " Disable legacy compatability
set title                               " Show filename in title bar
set number                              " Enable line numbers
set numberwidth=5                       " Add a little space around line numbers
set showmatch                           " Show matching brackets
set noerrorbells                        " Stop annoying bonk sound on scroll
set visualbell                          " ^& visual error notification instead
set history=999                         " Increase history (default = 20)
set undolevels=999                      " Moar undo (default=100)
set autoread                            " reload files if changed externally
filetype plugin indent on               " Auto-indent rules based on filetype
filetype on                             " Automatically detect file type
syntax on                               " Enable Syntax Highlighting
"
"
" ==============================================================================
" 2. Load Plugins
" ==============================================================================
"
" Using Vim Plug to automatically manage plugins via GitHub (junegunn/vim-plug)
"
" Ensure `plug.vim` is in `~/.vim/autoload` (or symlinked equivalent)
" then run :PlugInstall to install on new systems
"
call plug#begin('~/.vim/plugged')
"
" 2.1 Interface
" -------------
Plug 'vim-airline/vim-airline'          " Statusbar
Plug 'scrooloose/nerdtree'              " File Tree Explorer
Plug 'junegunn/fzf'                     " Fuzzy finder. Requires fzf binary.
Plug 'godlygeek/csapprox'               " Approx theme colours in old terminals
Plug 'junegunn/goyo.vim'                " Distraction-free mode
Plug 'editorconfig/editorconfig-vim'    " Read custom config from a dotfile
Plug 'jeffkreeftmeijer/vim-numbertoggle' "Autotoggle relative line numbers
"
" 2.2 Code
" --------
Plug 'ycm-core/YouCompleteMe'           " Code completion
Plug 'jiangmiao/auto-pairs'             " Generate matching brackets etc.
Plug 'terryma/vim-multiple-cursors'     " Sublime-style multiple cursors <C-n>
Plug 'tpope/vim-surround'               " Selector for surrounding elements
Plug 'terryma/vim-expand-region'        " Expand selection with + and -
Plug 'vim-syntastic/syntastic'          " Syntax checker
Plug 'dhruvasagar/vim-table-mode'       " Reflow MarkDown-formatted tables \tm
Plug 'csexton/trailertrash.vim'         " Fix whitespace with :TrailerTrim
"
" 2.3 git
" -------
Plug 'tpope/vim-fugitive'               " git wrapper, issue commands with :G
Plug 'zivyangll/git-blame.vim'          " Show git blame in statusbar
Plug 'airblade/vim-gitgutter'           " Show git status in gutter
"
" 2.4 Themes
" ----------
Plug 'ayu-theme/ayu-vim'                " My favourite theme from Sublime Text
"
"
call plug#end()
"
"
" ==============================================================================
" 3. Plugin Configuration
" ==============================================================================
"
" 3.1 Airline
" -----------
"  Show buffers in tabline when there's only one tab open (0/1)
let g:airline#extensions#tabline#enabled = 0
"
" Format of directory/filename display in tabline
" Valid options: default, jsformatter, unique_tail, unique_tail_improved
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
"
" 3.2 Nerd Tree
" -------------
noremap <C-o> :NERDTreeToggle<CR>
"
" 3.3 FZF
" -------
noremap ; :FZF<CR>
"
" 3.4 TrailerTrash
" ----------------
noremap <C-s> :TrailerTrim<CR>
"
" ==============================================================================
" 4. Display Options
" ==============================================================================
"
" 4.1 Colour Configuration
" ------------------------
set termguicolors                       " True colour mode in Vim
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"  " True colour mode in Terminal
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"  " True colour mode in Terminal
"
" 4.2 Theme Configuration
" -----------------------
colorscheme ayu                         " Set theme
let ayucolor="dark"                     " Options: dark, light, mirage
set guifont=Menlo:h14                   " Menlo is an Apple font
"
"
" ==============================================================================
" 5. Other Key Binding
" ==============================================================================
"
" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"
"
" ==============================================================================
" 6. Whitespace
" ==============================================================================
"
" 6.1 Wrapping
" ------------
set wrap                                " Enable word-wrap
set textwidth=80                        " Wrap point in characters
"
" 6.2 Tabs
" --------
set expandtab smarttab                  " Expand tabs to spaces, smart backspace
set softtabstop=4                       " Tab key results in # spaces
set shiftwidth=4                        " Visual # of spaces for tabs
"
" 6.3 Indentation
" ---------------
set autoindent smartindent              " Auto/smart indent
set copyindent                          " Auto indent with previous indentation

