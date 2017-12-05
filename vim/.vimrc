"---------------------------------------------------------
"                    Vundle Setup                    
"---------------------------------------------------------
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
Plugin 'shime/vim-livedown'
Plugin 'chrisbra/csv.vim'
Plugin 'miyakogi/conoline.vim'
Plugin 'bling/vim-bufferline'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'dpelle/vim-LanguageTool'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/fzf'
Plugin 'tmhedberg/SimpylFold'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'

call vundle#end()            " required
filetype plugin indent on    " required

"---------------------------------------------------------
"                    Themes                    
"---------------------------------------------------------

"current themes installed
"desertink molokai gruvbox hybrid

" gruvbox
"let g:gruvbox_italic=1
"let g:gruvbox_termcolors=256
"let g:gruvbox_bold=1
"colorscheme gruvbox

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

"highlight colo
highlight Visual ctermfg=NONE ctermbg=yellow  cterm=NONE guifg=white guibg=green gui=none

"mode indicator
set showmode
"set noshowmode

" Add a bit extra margin to the left
set foldcolumn=0

"mode indicator color
highlight ModeMsg ctermbg=DARKRED ctermfg=WHITE

" show commands in at the bottom of the screen
set showcmd

" set line at 80 characters
set colorcolumn=80

""status bar
"set laststatus=2 
"set statusline+=%0*\ %02n\ \|                              "buffernr
""set statusline+=[%{expand('%:h')}/]                       "parent folder
"set statusline+=%0*\ %t\ \|                                "file name
""set statusline+=%0*\ %<%h\                                "File+path
""set statusline+=%0*\ %<%t\                                "File+path
""set statusline+=%0*\ %y\                                  "FileType
""set statusline+=%0*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
""set statusline+=%0*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
""set statusline+=%0*\ %{&ff}\                              "FileFormat (dos/unix..) 
""set statusline+=%0*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
"set statusline+=%0*\ %=\|\ col:%03c\ \|                    "Colnr
"set statusline+=%0*\ \ %m%r%w\ %P\ \                       "Modified? Readonly? Top/bot.

" Status line color
hi StatusLine   ctermfg=232  ctermbg=3 cterm=bold 
hi StatusLineNC ctermfg=255 ctermbg=black cterm=none 

"change cursor color base on the mode
"if &term =~ "xterm\\|rxvt"
"  " use an orange cursor in insert mode
"  let &t_SI = "\<Esc>]12;red\x7"
"  " use a red cursor otherwise
"  let &t_EI = "\<Esc>]12;orange\x7"
"  silent !echo -ne "\033]12;red\007"
"  " reset cursor when vim exits
"  autocmd VimLeave * silent !echo -ne "\033]112\007"
"  " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
"endif

""change cursor shape based on mode
""http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes
"if has("autocmd")
"  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
"  au InsertEnter,InsertChange *
"    \ if v:insertmode == 'i' | 
"    \   silent execute '!echo -ne "\e[6 q"' | redraw! |
"    \ elseif v:insertmode == 'r' |
"    \   silent execute '!echo -ne "\e[4 q"' | redraw! |
"    \ endif
"  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
"endif

"---------------------------------------------------------
"                    Encryption                    
"---------------------------------------------------------

" blowfish2 was introduced in 7.4.399
if v:version > 74399
	" encryption
	set cryptmethod=blowfish2
endif


"---------------------------------------------------------
"                    GVIM                    
"---------------------------------------------------------
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set guitablabel=%N/\ %t\ %M

"---------------------------------------------------------
"                    Misc                    
"---------------------------------------------------------

" syntax highlighting
if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

" highlight python code
let python_highlight_all=1

"delay on escape
set timeoutlen=1000 ttimeoutlen=0

" Enable filetype plugins
filetype plugin on
filetype indent on

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
au FileType python 
            \ setlocal shiftwidth=4 |
            \ setlocal tabstop=4 |
            \ setlocal softtabstop=4 |
" for java
au FileType java 
            \setlocal tabstop=2  |
            \setlocal softtabstop=2 |
            \setlocal shiftwidth=2 |


" text width
set textwidth=79

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

" Show matching brackets when text indicator is over them
"set showmatch 
" How many tenths of a second to blink when matching brackets
" set mat=2

" Tab completion for file names
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
set mouse=a
"---------------------------------------------------------
"                    Motions                    
"---------------------------------------------------------

"enter normal mode
imap jj <Esc>

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" fixing up moving line by line in the paragraph
"nnoremap j gj
"nnoremap k gk
"vnoremap j gj
"vnoremap k gk

" Keep search matches in the middle of the window.
"nnoremap n nzzzv
"nnoremap N Nzzzv

"---------------------------------------------------------
"                    Plugins                    
"---------------------------------------------------------
" show list of buffer in the command bar
let g:loaded_bufferline = 0 " disable it now 

"" enable hard core mode
let g:hardtime_default_on = 1

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
"let g:ycm_autoclose_preview_window_after_completion=1


" disable syntactic for tex
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["tex"] }
"---------------------------------------------------------
"                    Leader                     
"---------------------------------------------------------

" leader commands
let mapleader = "\<Space>"

" redraw screen
nmap <silent> <leader>r :redraw!<CR>

" reload .vimrc
nmap <leader>z :so ~/.vimrc<CR>

" Disable highlight when <leader><h> is pressed
nmap <silent> <leader>n :nohl<CR>

" leader save
nmap <silent> <leader>s :w<CR>

" window selection 
nmap <silent> <leader>h :wincmd h<CR>
nmap <silent> <leader>j :wincmd j<CR>
nmap <silent> <leader>k :wincmd k<CR>
nmap <silent> <leader>l :wincmd l<CR>

nmap <silent> <leader>t :diffthis <CR>
"nmap <silent> <leader>f :diffoff  <CR>
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
 "nnoremap <Leader>b :ls<CR>
 nnoremap <Leader>i :bp<CR>
 nnoremap <Leader>o :bn<CR>
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

