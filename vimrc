
" ========== Vim Basic Settings ============= "

" Pathogen settings.
filetype off
"call pathogen#runtime_append_all_bundles()
call pathogen#infect()
Helptags
filetype plugin indent on

" Make vim incompatbile to vi.
set nocompatible
set modelines=0

" Line numbers
set number
set numberwidth=4

" TAB settings.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" More Common Settings.
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set visualbell
syntax on

" Get Rid of stupid Goddamned help keys
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Wildmenu completion "
set wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn " Version Controls"
set wildignore+=*.aux,*.out,*.toc "Latex Indermediate files"
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg "Binary Imgs"
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest "Compiled Object files"
set wildignore+=*.spl "Compiled speolling world list"
set wildignore+=*.sw? "Vim swap files"
set wildignore+=*.DS_Store "OSX SHIT"
set wildignore+=*.luac "Lua byte code"
set wildignore+=migrations "Django migrations"
set wildignore+=*.pyc "Python Object codes"
set wildignore+=*.orig "Merge resolution files"

" Stop vim writing backup files in normal dirs
set swapfile
set dir=~/.vim-tmp

" =========== END Basic Vim Settings =========== "


" ========== Plugin Settings ========== "

" colours
if ! has("gui_running")
    set t_Co=256
endif
" also background=light for a different style
set background=dark
colors peaksea

" nofrils minimal syntax highlighting
" :colo nofrils-dark
" :colo nofrils-light
" :colo nofrils-sepia

" ctrlp
let g:ctrlp_map = '<c-f>'

" Mapping to NERDTree
nnoremap <C-n> :NERDTreeToggle<cr>
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$']

" Mini Buffer some settigns."
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Tab color settings to make it more visible.
hi MBEChanged ctermfg=white
hi MBENormal ctermfg=white

" powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2
set t_Co=256

" vim-markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" mru.vim
nnoremap <C-m> :MRU<cr>

" taglist
" nnoremap <C-t> :TlistToggle<cr>

" better whitespace
nnoremap <C-s> :StripWhitespace<cr>

" =========== END Plugin Settings ========== "
