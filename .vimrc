" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	" alternatively, pass a path where Vundle should install plugins
	" call vundle#begin('~/some/path/here')

	" let Vundle manage Vundle, required
	Plugin 'VundleVim/Vundle.vim'

	Plugin 'scrooloose/nerdtree.git'

call vundle#end()            " required

filetype plugin indent on    " required
set nocompatible              " be iMproved, required
filetype off                  " required

highlight CursorLine cterm=bold ctermbg=black 
set cursorline
syntax on

function! BindF5_C()
	if filereadable("Makefile")
		set makeprg=make\ debug
		map <f5>      :w<cr>:make<cr>:cw<cr>
		imap <f5> <esc>:w<cr>:make<cr>:cw<cr>
	else
		map <f5>      :w<cr>:make %:r<cr>:cw<cr>
		imap <f5> <esc>:w<cr>:make %:r<cr>:cw<cr>
	endif
endfunction

au FileType c,cc,cpp,h,hpp,s call BindF5_C()
