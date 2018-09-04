" ========== Vim Basic Settings ============= "

" Make vim incompatbile to vi.
set nocompatible
set modelines=2

" Pathogen settings.
filetype off
"call pathogen#runtime_append_all_bundles()
call pathogen#infect()
Helptags
filetype plugin indent on

" Line numbers
set number
set numberwidth=4

" TAB settings.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

" More Common Settings.
set encoding=utf-8
set scrolloff=3
set autoindent
set copyindent
set showmode
set showcmd
set hidden
set visualbell
syntax on

" Make search ignore case if lowercase else case sensitive
set ignorecase
set smartcase

" incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" Get Rid of stupid Goddamned help keys
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Work around for SSH in Browser (Alt+up down left right instead of ctrl+w h)
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Insert mode press F2 to disable any auto-intent etc on the pasted text!
set pastetoggle=<F2>

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
colors peaksea

" Ack
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

" nofrils minimal syntax highlighting
"colors nofrils-dark
" :colo nofrils-light
" :colo nofrils-sepia
" :let g:nofrils_strbackgrounds=1

" background setting after colour setting !
set background=dark
" also background=light for a different style
" set line numbers to grey on black
hi LineNr    cterm=NONE ctermfg=grey  ctermbg=black
" set line numbers to black on white
" hi LineNr    term=NONE    cterm=NONE    ctermfg=NONE    ctermbg=NONE     gui=NONE    guifg=#000000    guibg=#FFFFFF

" ctrlp
let g:ctrlp_map = '<C-i>'

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
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2
set t_Co=256

" vim-markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" mru.vim
nnoremap <Leader>m :MRU!<cr>

" taglist
nnoremap <C-t> :TlistToggle<cr>

" better whitespace
nnoremap <Leader>s :StripWhitespace<cr>
autocmd BufEnter * :ToggleStripWhitespaceOnSave

" retab
nnoremap <Leader>r :retab<cr>

" =========== END Plugin Settings ========== "
