if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin()
  Plug 'tpope/vim-sensible'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'junegunn/vim-easy-align'
  Plug 'sheerun/vim-wombat-scheme'
  Plug 'scrooloose/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
  "let g:eclim_install = 'java -jar eclim_'
  "Plug 'ervandew/eclim', { 'do': g:eclim_install }
call plug#end()

"standard vim options
  set nocompatible
  set number
  set copyindent
  set softtabstop=2
  set shiftwidth=2
  set shiftround
  set expandtab
  set linebreak
  set shortmess=a
  set cmdheight=2
  set hidden
  set nowrap
  set ignorecase
  set smartcase
  set showmatch
  set showcmd
  set title
  set wildignore=*.swp,*.bak,*pyc,*.class
  set updatetime=250
  set mouse=a
  set hlsearch
  set incsearch
  syntax on

let mapleader = 'f'
let maplocalleader = mapleader
nn <leader>ev :e $MYVIMRC<cr>
nn <leader>sv :source $MYVIMRC<cr>
nn ; :
ino <S-Tab> <Esc>

"Insert mode autocompletes
"{}
  ino     {<CR>       {<CR>}<Esc>ko<Tab>
  ino     {<Space>    {<Space><Space>}<Left><Left>
  ino     {{          {
  ino     {}          {}
"[]
  ino     [           []<Left>
  ino     [[          [
  ino     []          []
"()
  ino     (           ()<Left>
  ino     ((          (
  ino     ()          ()
"<>
  ino     <           <><Left>
  ino     <<          <
  ino     <>          <>
"''
  ino     '           ''<Left>
  ino     ''          '
"""
  ino     "           ""<Left>
  ino     ""          "
"HTML <>
  iabbrev </          </<C-X><C-O>
"HTML capitalization
  iabbrev getelementbyid      getElementById
  iabbrev getelementbyId      getElementById
  iabbrev getelementByid      getElementById
  iabbrev getelementById      getElementById
  iabbrev getElementbyid      getElementById
  iabbrev getElementbyId      getElementById
  iabbrev getElementByid      getElementById

augroup filetypes
  au BufNewFile,BufRead *.pl set filetype=perl
  au BufNewFile,BufRead *.txt set filetype=text
  au BufNewFile,BufRead *.text set filetype=text
  au BufNewFile,BufRead *.rtf set filetype=text
augroup END

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

"vim-airline options
  let g:airline#extensions#tabline#enabled=1
  let g:airline_powerline_fonts=1
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  let g:airline_symbols.space = "\ua0"

"vim-easy-align mappings"
  xmap ga <Plug>(EasyAlign)
  nmap ga <Plug>(EasyAlign)

"NERDTree
  autocmd vimenter * NERDTree
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

colorscheme wombat
