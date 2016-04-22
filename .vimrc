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
nn <leader>ev :vsplit $MYVIMRC<cr>
nn <leader>sv :source $MYVIMRC<cr>
nn ; :

"Insert mode autocompletes
ino <S-Tab> <Esc> 
"{}
ino {<CR>       {<CR>}<Esc>ko<Tab>
ino {<Space>    {<Space><Space>}<Left><Left>
ino {{          {
ino {}          {}
"[]
ino [           []<Left>
ino [[          [
ino []          []
"()
ino (           ()<Left>
ino ((          (
ino ()          ()
"<>
ino <           <><Left>
ino <<          <
ino <>          <>
"''
ino '           ''<Left>
ino ''          '
"""
ino "           ""<Left>
ino ""          "
"HTML <>
iabbrev </      </<C-X><C-O>

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
	au Filetype c           nn <buffer> <localleader>c I//<esc>
	au Filetype cpp         nn <buffer> <localleader>c I//<esc>
	au Filetype csharp      nn <buffer> <localleader>c I//<esc>
	au Filetype java        nn <buffer> <localleader>c I//<esc>
	au Filetype javascript  nn <buffer> <localleader>c I//<esc>
	au Filetype php         nn <buffer> <localleader>c I//<esc>
	au Filetype python      nn <buffer> <localleader>c I#<esc>
	au Filetype perl        nn <buffer> <localleader>c I#<esc>
	au Filetype sh          nn <buffer> <localleader>c I#<esc>  
	au Filetype vim         nn <buffer> <localleader>c I"<esc>  
augroup END

"autocorrect
iabbrev adn and
iabbrev teh the
iabbrev tehn then
iabbrev waht what

