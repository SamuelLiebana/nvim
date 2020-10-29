source $HOME/.config/nvim/vim-plug/plugins.vim
source /usr/share/nvim/runtime/macros/matchit.vim
filetype indent on
syntax on 

language en_US.utf8

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 2
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

inoremap jk <ESC>

let mapleader = ""

" Basics
	set number relativenumber
	let mapleader =","
	let g:python_host_prog = '/usr/bin/python2'
	let g:python3_host_prog = '/usr/bin/python3'


" Autocompletion
	set wildmode=longest,list,full
	set wildmenu

" Compile python code
 	map <leader>p :w! \| !python %

" Save and compile matlab code
	map <leader>m :w! \| MatlabRun

" Align on = sign
 	map <leader>ae :Align =

" Align on % sign
 	map <leader>ap :Align % 

" Align on # sign
	map <leader>ah :Align #

" Add tab space to % sign
	map <leader>tp :s/%/    %

" Add tab space to # sign
	map <leader>th :s/#/    #

" Spits open at the bottom and right
	set splitbelow splitright

" Shorcutting split navigation
 	map <C-h> <c-w>h
 	map <C-j> <c-w>j
 	map <C-k> <c-w>k
 	map <C-l> <c-w>l

" Check file in shellcheck
	map <leader>s :!clear && shellcheck %<CR>

colorscheme wal
set background = "dark"

set hlsearch
hi Search ctermbg=Blue
hi Search ctermfg=Red

source ~/.config/nvim/align.vim

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
