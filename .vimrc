set nocompatible              " be iMproved, required
filetype off                  " required

syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-surround'
Plugin 'alvan/vim-closetag'
Plugin 'ycm-core/YouCompleteMe'

Bundle 'edkolev/tmuxline.vim'

call vundle#end()
filetype plugin indent on

" lightline config
" Remove last line - If I have lightline
set noshowmode
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \}

" vim-close tag config
let g:closetag_filenames = '*.html'
let g:closetag_filetypes = 'html'
let g:closetag_xhtml_filetypes = 'xhtml, jsx'
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

" Set Airline bar theme
let g:airline_theme='bubblegum'

" Tmux status line

"rainbow Plugin Options (luochen1990/rainbow)
let g:rainbow_active = 1    " 0 if you want to enable it later via :RainbowToggle

" Colour at column 80
set colorcolumn=100

" --------------------------------
" Basic stuff
" --------------------------------
let g:mapleader = " " " Set leader to spacebar 
set spelllang=en_gb
set backspace=indent,eol,start " Bring backspace to life
set number          " Line numbers
set hlsearch        " Highlight whole word when searching
set ignorecase      " Ignore case when searching...
set smartcase       " ...except when serach query contains a capital letter
set autoread        " Auto load files if they change on disc
map <Leader>p :set paste<CR><esc>"*]p:set nopaste<cr>
map <Leader>y "*y  )
map <Leader><Leader> :w<CR>
inoremap jj <ESC>:w<CR>
     
" Pasting - indent last pasted
nnoremap gz '[='] 

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><ESC> :noh<cr>
nnoremap = :vsplit<cr>

" Easy split navigation
nnoremap <C-J> <C-w><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Simplify using tabs
nnoremap ˙ gT
nnoremap ¬ gt
nnoremap T :tabnew<cr>

" Open new splits to right and bottom 
set splitbelow
set splitright

"Tab completion
set wildmenu
set wildmode=list:longest,list:full
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
    endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

" Tab size
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Disable swap files
set noswapfile

" Help with identation"
set autoindent

" Interface Option
set laststatus=2
"This is for statusline incase I can access internet
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%d/%m/%y_%H:%M:%S')}\

" NERDTree
map <c-m> :NERDTreeToggle<CR>
let NERDTreeMapOpenTab= '<ENTER>'

