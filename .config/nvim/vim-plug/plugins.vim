call plug#begin('~/.vim/plugged')


	Plug 'junegunn/goyo.vim'
		map <leader>f :Goyo \| set linebreak<CR>

	"Plug 'Valloric/YouCompleteMe'
	
	Plug 'chrisbra/csv.vim'

	Plug 'SirVer/ultisnips'
	 let g:UltiSnipsExpandTrigger = '<tab>'
	 let g:UltiSnipsJumpForwardTrigger = '<tab>'
	 let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
	 let g:UltiSnipsSnippetDirectories=["UltiSnips", "tex.snippets"]

	Plug 'ervandew/supertab'
	 let g:SuperTabNoCompleteAfter = ['^', ',', '\s']

	Plug 'neovim/pynvim'

	Plug 'mhinz/neovim-remote'
	 let g:vimtex_compiler_progname = 'nvr'

	 let g:vimtex_fold_manual = 1
	 let g:vimtex_latexmk_continuos = 1

	Plug 'dylanaraps/wal.vim'

	Plug 'PietroPate/vim-tex-conceal'
	 set conceallevel=2
	 let g:tex_conceal="abdgms"
	
	Plug 'MortenStabenau/matlab-vim'
	 let g:matlab_executable = '/usr/local/MATLAB/R2020b/bin/matlab'
	 let g:matlab_panel_size = 50
	Plug 'junegunn/vim-easy-align'
	
	" List ends here. Plugins become visible to Vim after this call.
	call plug#end()
