#!/bin/bash
# remove gitlab.com with proxy
sed -i 's/github.com //g' ~/.ssh/config

cat ~/.ssh/config
# Install vim-plug
echo 'Install vim-plug, which helps to install vim plugins easily'
curl -fLo ~/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install vim-polyglot for js highlight
echo """
call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end() 

let mapleader = ' ' 
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)
nnoremap <silent> <Leader>a :Ag<CR>

nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>h :tabp<CR>
nnoremap <silent> <Leader>l :tabn<CR>
nnoremap <silent> <Leader>c :tabc<CR>
nnoremap <silent> <Leader>j :History<CR>
nnoremap <silent> <Leader>b :Buffers<CR>

""" >> ~/.vimrc

vim -c 'PlugInstall'

# add github.com into ~/ssh.config
sed -i 's/host/host github.com/g' ~/.ssh/config
