"---------------------------------------------------------
"                    Plugins                    
"---------------------------------------------------------
"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'takac/vim-hardtime'
Plugin 'scrooloose/nerdtree'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'dpelle/vim-LanguageTool'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'tmhedberg/SimpylFold'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'fatih/vim-go'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'godlygeek/tabular'
Plugin 'lervag/vimtex'
"Plugin 'ervandew/supertab'
"Plugin 'miyakogi/conoline.vim'
"Plugin 'bling/vim-bufferline'
"Plugin 'junegunn/goyo.vim'
"Plugin 'shime/vim-livedown'
"Plugin 'chrisbra/csv.vim'

call vundle#end()            " required
filetype plugin indent on    " required

"---------------------------------------------------------
"                    Plugin Setup
"---------------------------------------------------------
" show list of buffers in the command bar
let g:loaded_bufferline = 0 " disable it now 

" enable hard core mode
let g:hardtime_default_on = 0

"nerdtree
map <C-n> :NERDTreeToggle<CR>

" FZF
map <C-p> :FZF<CR>

"conoline
let g:conoline_auto_enable = 1
"let g:conoline_color_insert_light = 'ctermbg=black ctermfg=white'
"let g:conoline_color_normal_light = 'ctermbg=black ctermfg=white'

"LanguageTool
let g:languagetool_jar = "/home/salman/usr/bin/languagetool/languagetool-standalone/target/LanguageTool-3.9-SNAPSHOT/LanguageTool-3.9-SNAPSHOT/languagetool-commandline.jar"
"let g:languagetool_lang = "en_US"

" code folding for python
let g:SimpylFold_docstring_preview=1

" you complete me
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_filetype_blacklist = {
     \ 'tex' : 1,
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}

" disable syntactic for tex
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["tex"] }

"---------------------------------------------------------
"                    Themes                    
"---------------------------------------------------------

"current installed themes 
"desertink molokai gruvbox hybrid

" Desert theme
"colorscheme desertink 
"highlight NonText ctermfg=59 ctermbg=NONE cterm=NONE guifg=#414e58 guibg=#232c31 gui=NONE

" hybrid
"let g:hybrid_custom_term_colors = 1
"let g:hybrid_reduced_contrast = 0
"colorscheme hybrid

"---------------------------------------------------------
"                    Visual Changes                    
"---------------------------------------------------------

" do not set the title of the window to vim buffer name. I have problems
" switching to mlterm when titles are enabled
set notitle

" colors
set t_Co=256
set background=light

" true color
"set termguicolors

hi SpellBad cterm=underline,italic ctermbg=none
hi SpellRare cterm=underline,italic ctermbg=none
hi SpellLocal cterm=underline,italic ctermbg=none
hi SpellCap cterm=underline,italic ctermbg=none
hi Comment  cterm=italic ctermbg=none ctermfg=grey
hi LineNr ctermfg=grey
hi CursorLineNr cterm=bold ctermfg=grey
hi ColorColumn ctermbg=15

"latex highlights
source ~/.vimrc-latex-hl

"highlight colo
highlight Visual ctermfg=NONE ctermbg=lightblue  cterm=NONE guibg=lightblue gui=none
highlight Search ctermfg=NONE ctermbg=lightgreen  cterm=NONE guibg=lightblue gui=none

"mode indicator
set showmode
"set noshowmode

" Add a bit extra margin to the left
set foldcolumn=0

"mode indicator color
highlight ModeMsg ctermbg=DARKRED ctermfg=WHITE

" show commands in at the bottom of the screen
set showcmd

"Status line color
hi StatusLine   ctermfg=0  ctermbg=YELLOW cterm=bold 
hi StatusLineNC ctermfg=255  ctermbg=0 cterm=bold 

" disable menu and tool bars for gvim
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

"---------------------------------------------------------
"                    Encryption                    
"---------------------------------------------------------

set cryptmethod=blowfish2

"---------------------------------------------------------
"                    Misc                    
"---------------------------------------------------------
" Enable filetype plugins
filetype plugin indent on

" syntax highlighting
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

" highlight python code
let python_highlight_all=1

"delay on escape
set timeoutlen=1000 ttimeoutlen=0

" show partial lines 
set display=lastline

"backspace to delete
set backspace=indent,eol,start

"fix Ctrl U. 
inoremap <C-U> <C-G>u<C-U>

" Line numbers
set relativenumber
set number

" Set to auto read when a file is changed from the outside
set autoread

" tabs 
" for all files
set smarttab
set expandtab
set shiftwidth=4
set tabstop=4 
set softtabstop=4 
"for python
au FileType python,java,go
            \ setlocal shiftwidth=2 |
            \ setlocal tabstop=2 |
            \ setlocal softtabstop=2 |
            \ setlocal textwidth=100| 
            \ setlocal colorcolumn=101|


" encoding
set encoding=utf-8

" auto ident
set autoindent	
set copyindent "copy the identation from the previous line

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Keep search matches in the middle of the window.
"nnoremap n nzzzv
"nnoremap N Nzzzv

" Show matching brackets when text indicator is over them
"set showmatch 

" How many tenths of a second to blink when matching brackets
"set mat=2

" bash like tab completion for file names
set wildmode=longest,list,full
set wildmenu

" clipboard
set clipboard=unnamedplus

" not to break on words
set formatoptions=1
set linebreak

" Enable folding
set foldmethod=indent
set foldlevel=99

" file format
set fileformat=unix

" enable mouse
"set mouse=a

"enter normal mode
imap jj <Esc>

" move scree without moving cursor
"nnoremap <C-e> kzz
"nnoremap <C-y> jzz

" isert matching braces
inoremap {<CR> {<CR>}<Esc>ko
"inoremap ( ()<Esc>i
"inoremap [ []<Esc>i

" set the begenning of the function to the top of the window
nnoremap <leader>mm mq[mzt`q

" use same key binding for pane/split resize in vim and tmux
execute "set <M-H>=\eH"
execute "set <M-J>=\eJ"
execute "set <M-K>=\eK"
execute "set <M-L>=\eL"
nnoremap <M-L> <C-w>>
nnoremap <M-H> <C-w><
nnoremap <M-J> <C-w>+
nnoremap <M-K> <C-w>-

" moving between splits
execute "set <M-h>=\eh"
execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
execute "set <M-l>=\el"
nnoremap <M-l> :wincmd l<CR>
nnoremap <M-h> :wincmd h<CR>
nnoremap <M-j> :wincmd j<CR>
nnoremap <M-k> :wincmd k<CR>

"---------------------------------------------------------
"                    Leader                     
"---------------------------------------------------------

" leader commands
let mapleader = "\<Space>"

" redraw screen
nmap <silent> <leader>r :redraw!<CR>

" reload current file 
nmap <leader>z :e!<CR>

" reload .vimrc
nmap <leader>Z :so ~/.vimrc<CR>

" Disable highlight when <leader><h> is pressed
nmap <silent> <leader>/ :nohl<CR>

" leader save
nmap <silent> <leader>s :w<CR>

" window selection 
nmap <silent> <leader>h :wincmd h<CR>
nmap <silent> <leader>j :wincmd j<CR>
nmap <silent> <leader>k :wincmd k<CR>
nmap <silent> <leader>l :wincmd l<CR>

nmap <silent> <leader>t :diffthis <CR>
nmap <silent> <leader>o :diffoff  <CR>
nmap <silent> <leader>u :diffupdate <CR>

" leader makes
nmap <silent> <leader>m :make <CR>

" nerdtree file filter
nnoremap <leader>f :call FilterFiles()<cr>
"---------------------------------------------------------
"                    Leader Buffer Management                     
"---------------------------------------------------------

" Mappings to access buffers (don't use "\p" because a
" " delay before pressing "p" would accidentally paste).
" " \l       : list buffers
" " \i \o \g : go back/forward/last-used
" " \1 \2 \3 : go to buffer 1/2/3 etc
 nnoremap <Leader>b :buffers<CR>:b<Space>
 nnoremap <Leader>g :e#<CR>
 nnoremap <Leader>1 :1b<CR>
 nnoremap <Leader>2 :2b<CR>
 nnoremap <Leader>3 :3b<CR>
 nnoremap <Leader>4 :4b<CR>
 nnoremap <Leader>5 :5b<CR>
 nnoremap <Leader>6 :6b<CR>
 nnoremap <Leader>7 :7b<CR>
 nnoremap <Leader>8 :8b<CR>
 nnoremap <Leader>9 :9b<CR>
 nnoremap <Leader>0 :10b<CR>
 "set autowriteall
 set confirm
 " ignore unsaved files while switching buffers
 "set hidden

 
"---------------------------------------------------------
"                    Spell Check & Correct                     
"                    Auto Correct                     
"---------------------------------------------------------
" spell checking
"set spell spelllang=en_us
"setlocal spell spelllang=en_us
autocmd BufRead *.tex setlocal spell spelllang=en_us
nmap <silent> <leader>c :set spell!<CR>

" Auto correct mistakes
iab filesystem file system


"---------------------------------------------------------
"                   Functions 
"---------------------------------------------------------

"filter files for nerdtree plugin
function! FilterFiles()
    call inputsave()
    let extension = input('Enter File Extention To Filter:')
    call inputrestore()
    let test = "let g:NERDTreeIgnore = ['\\(\\.".extension."\\)\\@<!$[[file]]\']"
    execute test
endfunction

"au FileType tex syn region texStatement matchgroup=texStatement start="\\footnote{"  matchgroup=texStatement end="}" end="%stopzone\>"   contains=@texStatement 
