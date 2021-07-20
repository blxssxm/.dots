set clipboard+=unnamedplus
syntax on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set noexpandtab
set smartindent
set hlsearch
set spell
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set exrc
set secure
set t_Co=256

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'lervag/vimtex'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
call plug#end()

colorscheme gruvbox
set background=dark
map P :! zathura groff.pdf & disown<CR><CR>
map I :! groff -ms % -T pdf > groff.pdf<CR><CR>
autocmd InsertEnter + norm zz
autocmd BufWritePre * %s/\s\+$//e
augroup project
	autocmd!
	autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END
map <F12> :w <CR> :!gcc % -o %< && ./%< <CR>
autocmd VimLeave *.tex !texclear %
autocmd VimLeave * execute '!notify-send EXITED FILE'
autocmd VimLeave * execute 'rm *.fls'
autocmd VimLeave * execute 'rm *.log'
autocmd VimLeave * execute 'rm *.aux'
autocmd VimLeave * execute 'rm *.toc'
autocmd VimLeave * execute 'rm *.fdb_latexmk'
autocmd VimLeave * execute 'rm *.synctex.gz'
