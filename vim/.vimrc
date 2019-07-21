" set leader key
let mapleader = "\<Space>"

"##########################################################
"################### Plugins ##############################                    
"##########################################################
call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'godlygeek/tabular'
Plug 'timakro/vim-searchant'
Plug 'vim-scripts/taglist.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'dhruvasagar/vim-table-mode'
Plug 'chrisbra/vim-diff-enhanced'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'vim-scripts/ZoomWin'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
"Plug 'vim-syntastic/syntastic'
"Plug 'w0rp/ale'
"Plug 'Valloric/YouCompleteMe'
"Plug 'vim-ruby/vim-ruby'
"Plug 'fatih/vim-go' , { 'do': ':GoInstallBinaries' }
"Plug 'lervag/vimtex'
"Plug 'tpope/vim-unimpaired'
"Plug 'tmhedberg/SimpylFold'
"Plug 'dpelle/vim-LanguageTool'
"Plug 'shime/vim-livedown'
"Plug 'chrisbra/csv.vim'

call plug#end()

"##########################################################
"################### Plugins' setup #######################                    
"##########################################################

"nerdtree
map <C-n> :NERDTreeToggle<CR>

" FZF
map <C-p> :FZF<CR>

"syntastic 
"source ~/.syntasticrc

"coc-vim
source ~/.cocvimrc


" rust.vim
let g:rustfmt_autosave = 1

"##########################################################
"################### Themes ###############################                    
"##########################################################

" colors
set t_Co=256
set background=light
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default': {
  \       'transparent_background': 1,
  \       'allow_italic': 1,
  \       'allow_bold': 1
  \     }
  \   }
  \ }
colorscheme PaperColor
"set termguicolors

"##########################################################
"################### Visual Changes #######################                    
"##########################################################

" do not set the title of the window to vim buffer name.
" I had problems switching to mlterm when titles are enabled
set notitle

highlight   SpellBad     cterm=underline,italic   ctermbg=none
highlight   SpellRare    cterm=underline,italic   ctermbg=none
highlight   SpellLocal   cterm=underline,italic   ctermbg=none
highlight   SpellCap     cterm=underline,italic   ctermbg=none

"line number colors 
highlight LineNr        cterm=none ctermfg=gray ctermbg=none
highlight FoldColumn    cterm=none ctermfg=gray ctermbg=none
highlight SignColumn    cterm=none ctermfg=gray ctermbg=none
highlight CursorLineNr  cterm=none ctermfg=gray ctermbg=none

"hilight comments
highlight Comment  cterm=italic ctermbg=none ctermfg=gray

"latex highlights
source ~/.vimrc-latex-hl

"highlight colo
highlight   Visual ctermfg=NONE ctermbg=yellow      cterm=NONE   guibg=yellow       gui=none
highlight   Search ctermfg=NONE ctermbg=lightgreen  cterm=NONE   guibg=lightgreen   gui=none

"mode indicator
set showmode
highlight ModeMsg ctermbg=DARKRED ctermfg=WHITE
"set noshowmode

" Add a bit extra margin to the left
set foldcolumn=0

" show commands in at the bottom of the screen
set showcmd

"Status line color
hi StatusLine   ctermfg=0  ctermbg=YELLOW cterm=bold 
hi StatusLineNC ctermfg=255  ctermbg=0 cterm=bold 

"show function name in the status line. tagline plugin needed
set statusline +=\ %{Tlist_Get_Tagname_By_Line()}

" Need the following two lines for iterm to support italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

"Making diff more readable
set diffopt+=iwhite
"added lines
highlight DiffAdd        cterm=bold ctermfg=2 ctermbg=15 
"deleted lines
highlight DiffDelete     cterm=bold ctermfg=15 ctermbg=none 
"changed lines
highlight DiffChange     cterm=bold ctermfg=none ctermbg=15 
"changed text
highlight DiffText       cterm=bold ctermfg=1 ctermbg=15 
autocmd BufEnter * if &diff | set syntax=off | endif

" started In Diff-Mode set diffexpr (plugin not loaded yet)
if &diff
    let &diffexpr='EnhancedDiff#Diff("git diff", "--diff-algorithm=patience")'
endif


"##########################################################
"################### Encryption ###########################                    
"##########################################################

set cryptmethod=blowfish2

"##########################################################
"#################### Misc ################################                    
"##########################################################
"
" Enable filetype plugins
filetype plugin indent on

" syntax highlighting
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

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
au FileType python,java,go,rust
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
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed "OSX
else
  set clipboard=unnamedplus "Linux
endif

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



"##########################################################
"################### Key Bindings #########################                    
"##########################################################

" set the begenning of the function to the top of the window
nnoremap <leader>mm mq[mzt`q

" resize splits 
" use same key binding for pane/split resize in vim and tmux
execute "set <M-H>=\eH"
execute "set <M-J>=\eJ"
execute "set <M-K>=\eK"
execute "set <M-L>=\eL"
execute "set <M-F>=\eF"
nnoremap <M-L> <C-w>>
nnoremap <M-H> <C-w><
nnoremap <M-J> <C-w>+
nnoremap <M-K> <C-w>-
nnoremap <M-F> :ZoomWin<CR>

" moving between splits
execute "set <M-h>=\eh"
execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
execute "set <M-l>=\el"
nnoremap <M-l> :wincmd l<CR>
nnoremap <M-h> :wincmd h<CR>
nnoremap <M-j> :wincmd j<CR>
nnoremap <M-k> :wincmd k<CR>

" comment
" C-_ is actuall C-/ because C-/ generate C-_
nnoremap <C-_> mz0i//<Esc>j  


"Quit All
nnoremap QA :qa<CR>
nnoremap CQ :cq<CR>

" redraw screen
nmap <silent> <leader>r :redraw!<CR>

" reload current file 
nmap <leader>z :e!<CR>

" reload .vimrc
nmap <leader>Z :so ~/.vimrc<CR>

" Disable highlight when <leader><h> is pressed
"nmap <silent> <leader>/ :nohl<CR>

"vim-searchant toggle 
let g:searchant_map_stop = 0
nmap <silent> <leader>/ <Plug>SearchantStop

" leader save
nmap <silent> <leader>s :w<CR>

" window selection 
nmap <silent> <leader>h :wincmd h<CR>
nmap <silent> <leader>j :wincmd j<CR>
nmap <silent> <leader>k :wincmd k<CR>
nmap <silent> <leader>l :wincmd l<CR>

"diff 
nmap <silent> <leader>t :diffthis <CR>
nmap <silent> <leader>o :diffoff  <CR>
nmap <silent> <leader>u :diffupdate <CR>

" leader makes
map <silent> <leader>m :w<CR>  :!make <CR>

" nerdtree file filter
nnoremap <leader>f :call FilterFiles()<cr>

nmap <silent> <leader>a :Gblame <CR>

"synchronized split
"https://vim.fandom.com/wiki/View_text_file_in_two_columns
:noremap <silent> <Leader>vs :<C-u>let @z=&so<CR>:set so=0 noscb<CR>:bo vs<CR>Ljzt:setl scb<CR><C-w>p:setl scb<CR>:let &so=@z<CR>

"##########################################################
"################### Buffer Mgm  ##########################                    
"##########################################################

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

"##########################################################
"################### Spell Check ##########################                    
"################### Auto Correct #########################                    
"##########################################################
 
" spell checking
"set spell spelllang=en_us
"setlocal spell spelllang=en_us
autocmd BufRead *.tex setlocal spell spelllang=en_us
nmap <silent> <leader>c :set spell!<CR>

" Auto correct mistakes
iab filesystem file system

"##########################################################
"################### Functions ############################                    
"##########################################################

"filter files for nerdtree plugin
function! FilterFiles()
    call inputsave()
    let extension = input('Enter File Extention To Filter:')
    call inputrestore()
    let test = "let g:NERDTreeIgnore = ['\\(\\.".extension."\\)\\@<!$[[file]]\']"
    execute test
endfunction


"osc 52 yank
vnoremap <leader>y "zy:call Osc52Yank()<cr>
function! Osc52Yank()
     let buffer=@z
     execute  "!echo -ne ".shellescape(buffer, 1)." | yank"
endfunction
