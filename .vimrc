set nocompatible
set number
set ruler
set autoindent
set copyindent
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set linebreak
set shortmess=a
set cmdheight=2
set hidden
set nowrap
set incsearch
set smartcase
set showmatch
set title
set wildignore=*.swp,*.bak,*pyc,*.class

syntax on
filetype on
let mapleader = 'f'
let maplocalleader = mapleader
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap ; :

"Insert mode autocompletes
inoremap <S-Tab> <Esc> 
inoremap {<CR> {<CR>}<Esc>ko<Tab>
inoremap {<Space> {<Space><Space>}<Esc>hi
inoremap [ []<Esc>i


augroup filetypes
	au BufNewFile,BufRead *.pl set filetype=perl
	au BufNewFile,BufRead *.txt set filetype=text
	au BufNewFile,BufRead *.text set filetype=text
	au BufNewFile,BufRead *.rtf set filetype=text
augroup END
set statusline=%f\ -\ Filetype:\ %y

"Echo >^.^< only when Vim is started, not whenever .vimrc is loaded
if exists("vimstarted")
        echo ">^.^<"
endif
augroup startup
        au VimEnter * echo ">^.^<"
        au VimEnter * let vimstarted=1
augroup END

"au BufNewFile,BufRead * startinsert
augroup commentgroup
	au Filetype c           nnoremap <buffer> <localleader>c I//<esc>
	au Filetype cpp         nnoremap <buffer> <localleader>c I//<esc>
	au Filetype csharp      nnoremap <buffer> <localleader>c I//<esc>
	au Filetype java        nnoremap <buffer> <localleader>c I//<esc>
	au Filetype javascript  nnoremap <buffer> <localleader>c I//<esc>
	au Filetype php         nnoremap <buffer> <localleader>c I//<esc>
	au Filetype python      nnoremap <buffer> <localleader>c I#<esc>
	au Filetype perl        nnoremap <buffer> <localleader>c I#<esc>
	au Filetype perl        nnoremap <buffer> <localleader>c I#<esc>
	au Filetype sh          nnoremap <buffer> <localleader>c I#<esc>  
	au Filetype vim         nnoremap <buffer> <localleader>c I"<esc>  

augroup END

"autocorrect
iabbrev adn and
iabbrev teh the
iabbrev tehn then
iabbrev waht what

