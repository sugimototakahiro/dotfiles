
set number
set cursorline
set ruler
set showcmd
set showmatch
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
set whichwrap=b,s,h,l,<,>,[,],~
set hidden
" tab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent


set noswapfile
set fileencodings=utf-8,euc-jp,ucs-bom,iso-2022-jp,sjis,cp932,latin1
set fileformats=unix,dos,mac
set nowrap

if has('nvim')
    set clipboard&
    set clipboard^=unnamedplus
    if has('mouse')
      set mouse=a
  endif
else
    set laststatus=2
    set wildmenu
    set clipboard=unnamed,autoselect
    set backspace=indent,eol,start
endif

" visual tab
if has('unix')
  autocmd MyAutoCmd ColorScheme * hi SpecialKey ctermfg=darkmagenta ctermbg=none
else
  autocmd MyAutoCmd ColorScheme * hi SpecialKey ctermfg=darkmagenta
endif
set list listchars=tab:¦_

" highlighting zenkaku space
"autocmd MyAutoCmd BufRead,BufNew * match Error / /

