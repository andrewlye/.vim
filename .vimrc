"PLUGINS -------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')
	Plug 'preservim/nerdtree'
	Plug 'dense-analysis/ale'
	Plug 'itchyny/lightline.vim'
	Plug 'tpope/vim-surround'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'airblade/vim-gitgutter'
	Plug 'sheerun/vim-polyglot'	
	Plug 'jiangmiao/auto-pairs'
	Plug 'machakann/vim-highlightedyank'
	Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

call plug#end()

" }}}

" KEYMAPS --------------------------------------------------- {{{

let mapleader = " "
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap yy y$
nnoremap <leader>sv	:vsplit<CR>
nnoremap <leader>sh :split<CR>
nnoremap <leader>sx <c-w>q
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" }}}

" OPTIONS --------------------------------------------------- {{{

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set shiftwidth=4
set tabstop=4
set nobackup
set nowrap
set incsearch
set ignorecase
set smartcase
set showmode
set showmatch
set hlsearch
set history=1000
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set cursorline
let g:highlightedyank_highlight_duration = 100

" }}}

" STATUS LINE  -------------------------------------------- {{{
set statusline=
set statusline+=\ %F\ %M\ %R
set statusline+=%=
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

set noruler
set laststatus=2

"}}}

" THEME -------------------------------------------------- {{{
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let g:lightline = {
          \ 'colorscheme': 'spaceduck',
          \ }

colorscheme spaceduck

" }}}
