" set leader key
let mapleader = "\<Space>"
set clipboard=exclude:.*

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
Plug 'chrisbra/vim-diff-enhanced'
Plug 'vim-scripts/ZoomWin'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go' , { 'do': ':GoInstallBinaries' }
Plug 'rhysd/vim-clang-format'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'liuchengxu/vista.vim'
Plug 'm-pilia/vim-ccls'
Plug 'will133/vim-dirdiff'
Plug 'vim-autoformat/vim-autoformat'
Plug 'powerman/vim-plugin-AnsiEsc'

"Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'NLKNguyen/papercolor-theme'
"Plug 'dhruvasagar/vim-table-mode'
"Plug 'shime/vim-livedown'
" Plug 'rust-lang/rust.vim'
"Plug 'vim-syntastic/syntastic'
"Plug 'w0rp/ale'
"Plug 'Valloric/YouCompleteMe'
"Plug 'vim-ruby/vim-ruby'
"Plug 'lervag/vimtex'
"Plug 'tpope/vim-unimpaired'
"Plug 'tmhedberg/SimpylFold'
"Plug 'dpelle/vim-LanguageTool'
"Plug 'chrisbra/csv.vim'

call plug#end()

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
  let g:go_metalinter_autosave_enabled = ['vet','revive','errcheck','staticcheck','unused','varcheck']
"##########################################################
"################### Plugins' setup #######################                    
"##########################################################

"nerdtree
"map <C-n> :NERDTreeToggle<CR>

" FZF
map <C-p> :FZF<CR>
let g:fzf_preview_window = ['hidden', 'ctrl-/']
let g:fzf_layout = { 'window': { 'width': 0.99, 'height': 0.99 } }

" map <C-g> :GFiles<CR>

"syntastic 
"source ~/.syntasticrc

"coc-vim
source ~/.cocvimrc
let g:coc_start_at_startup = v:false

" comment style
autocmd FileType go,c,cpp,cs,java setlocal commentstring=//\ %s

"##########################################################
"################### Themes ###############################                    
"##########################################################

" colors
set t_Co=256
set background=light
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
highlight Comment  cterm=italic 
"ctermbg=none ctermfg=none

"highlight colo
highlight   Visual ctermfg=NONE ctermbg=39      cterm=NONE   
highlight   Search ctermfg=NONE ctermbg=lightgreen  cterm=NONE   

" split divider line 
set fillchars+=vert:⎪
highlight VertSplit cterm=NONE

"color column if line length exceeds lenght
autocmd BufEnter * highlight OverLength cterm=none ctermbg=lightred 
" autocmd  BufEnter * match OverLength /\%101v/
autocmd BufEnter * if &ft ==# 'c'
      \ || &ft ==# 'cpp'
      \ || &ft ==# 'cc'
      \ || &ft ==# 'h'
      \ || &ft ==# 'hpp'
      \ || &ft ==# 'go'
      \ || &ft ==# 'sh' 
      \ | match OverLength /\%101v/ | endif

"mode indicator
set showmode
highlight ModeMsg ctermbg=none ctermfg=DARKRED
"set noshowmode

" Add a bit extra margin to the left
set foldcolumn=0

" show commands in at the bottom of the screen
set showcmd

"Status line color
hi StatusLine   ctermfg=0  ctermbg=YELLOW cterm=bold 
hi StatusLineNC ctermfg=255  ctermbg=GRAY cterm=bold 
set laststatus=2
"set statusline^=%{coc#status()}
set statusline=%t%m%r%h%w\ %=[%{coc#status()}]%=[%04l,\ %04v][%p%%][LOC=%L]
autocmd User CocStatusChange redrawstatus

"SignColumn
set signcolumn=auto

" Need the following two lines for iterm to support italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

"Making diff more readable
"set diffopt+=iwhite
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
set shiftwidth=2
set tabstop=2 
set softtabstop=2 
"two space identation 
au FileType python,java,go,rust,sh,c,cpp
            \ setlocal shiftwidth=2 |
            \ setlocal tabstop=2 |
            \ setlocal softtabstop=2 |
            \ setlocal textwidth=100| 

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

" highlight colors 
highlight GREEN ctermbg=green  
highlight YELLOW ctermbg=yellow  
highlight RED ctermbg=red
highlight GREY ctermbg=grey
highlight CYAN ctermbg=cyan
":call matchadd("MyGroup1", "foo")
":call clearmatches()

" bash like tab completion for file names
set wildmode=longest,list,full
set wildmenu

" clipboard
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed "OSX
else
  set clipboard=unnamedplus "Linux
endif

" paste
"set paste

" not to break on words
set formatoptions=1
set linebreak

" Enable folding
set foldmethod=indent
set foldlevel=99

" file format
"set fileformat=unix

" enable mouse
set mouse=a

"enter normal mode
"imap jj <Esc>

"autocmd FileType go,c,cpp,cs,java imap  { {<Space>}<Left><Left>
"autocmd FileType go,c,cpp,cs,java imap  [ [<Space>]<Left><Left>

" move scree without moving cursor
"nnoremap <C-e> kzz
"nnoremap <C-y> jzz

"##########################################################
"################### Key Bindings #########################                    
"##########################################################

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
"nnoremap <C-_> mz^i//<Esc>j  
nnoremap <C-_> :Commentary<CR>j
vnoremap <C-_> :Commentary<CR>



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
nmap <silent> <leader>s :wa<CR>
nmap <silent> <leader><space> :w<CR>

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
map <silent> <leader>m :w<CR>  :!clear; make; <CR>

" leader tests
map <silent> <leader>tc :w<CR>  :GoTestFunc <CR>

" leader cocs
map <silent> <leader>cs :CocStart <CR>

" format code 
autocmd FileType c      nnoremap <buffer><silent><leader>f :ClangFormat<CR>
autocmd FileType cpp    nnoremap <buffer><silent><leader>f :ClangFormat<CR>
autocmd FileType proto  nnoremap <buffer><silent><leader>f :ClangFormat<CR>

autocmd FileType taglist set norelativenumber

" git blame
function! s:ToggleBlame()
    if &l:filetype ==# 'fugitiveblame'
        close
    else
        Git blame
    endif
endfunction
nmap <silent> <leader>a :call <SID>ToggleBlame()<CR>

"synchronized split
"https://vim.fandom.com/wiki/View_text_file_in_two_columns
:noremap <silent> <Leader>vs :<C-u>let @z=&so<CR>:set so=0 noscb<CR>:bo vs<CR>Ljzt:setl scb<CR><C-w>p:setl scb<CR>:let &so=@z<CR>


" Do not fix eol or eoffile
set nofixeol
set nofixendofline
set  noeol
 
"##########################################################
"################### Buffer Mgm  ##########################                    
"##########################################################

" Mappings to access buffers (don't use "\p" because a
" " delay before pressing "p" would accidentally paste).
" " \l       : list buffers
" " \i \o \g : go back/forward/last-used
" " \1 \2 \3 : go to buffer 1/2/3 etc
 nnoremap <Leader>b :Buffers<CR>
 nnoremap <Leader>g :e#<CR>
" nnoremap <Leader>1 :1b<CR>
" nnoremap <Leader>2 :2b<CR>
" nnoremap <Leader>3 :3b<CR>
" nnoremap <Leader>4 :4b<CR>
" nnoremap <Leader>5 :5b<CR>
" nnoremap <Leader>6 :6b<CR>
" nnoremap <Leader>7 :7b<CR>
" nnoremap <Leader>8 :8b<CR>
" nnoremap <Leader>9 :9b<CR>
" nnoremap <Leader>0 :10b<CR>
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

let g:vista_default_executive = 'coc'
let g:vista#renderer#enable_icon = 0

nmap <leader>7  :Vista!!<CR>
nmap <leader>so :Vista finder<CR>
nmap <leader>sl :Lines<CR>


"edit file in xdd
":%!xxd
":%!xxd -r

"remove new line char at the endof file
":set binary
":set noeol
":w
"
autocmd FileType python let b:coc_root_patterns = ['.git', '.env', 'venv', '.venv', 'setup.cfg', 'setup.py', 'pyproject.toml', 'pyrightconfig.json']

" highligh current line and column
nmap <silent> <Leader>x  :set cursorline! cursorcolumn!<CR>
hi CursorLine   cterm=NONE ctermbg=white ctermfg=NONE "guibg=lightgrey guifg=white
hi CursorColumn cterm=NONE ctermbg=white ctermfg=NONE "guibg=lightgrey guifg=white
