
"change display mapping
nmap <Down> <C-w>j
nmap <Up> <C-w>k
nmap <Left> <C-w>h
nmap <Right> <C-w>l

"vertical size adjust '<' '>'
nnoremap <silent><C-+> <C-w><
nnoremap <silent><C--> <C-w>>
"horizonal size adjust '+' '-'
noremap <silent>+ <C-w>+
noremap <silent>- <C-w>-


" vimdiff => :Diff
command! -nargs=1 -complete=file Diff vertical diffsplit <args>
" terminal mode
if has('nvim')
  tnoremap <silent> <ESC> <C-\><C-n>
endif


" Tab jump
noremap t1 1gt
noremap t2 2gt
noremap t3 3gt
noremap t4 4gt
noremap t5 5gt
noremap t6 6gt
noremap t7 7gt
noremap t8 8gt
noremap t9 9gt
noremap t0 :tablast<cr>


