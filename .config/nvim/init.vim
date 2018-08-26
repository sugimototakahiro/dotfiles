let g:cache_home = empty($XDG_CACHE_HOME) ? expand('$HOME/.cache') : $XDG_CACHE_HOME
let g:config_home = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config') : $XDG_CONFIG_HOME

" dein {{{
let s:nvim_cache_dir = g:cache_home . '/nvim'
let s:nvim_config_dir = g:config_home . '/nvim'

let s:dein_cache_dir = s:nvim_cache_dir . '/dein'
let s:dein_config_dir = s:nvim_config_dir . '/dein'

" python setting

if has('unix')
  let g:python_host_prog = '/usr/bin/python2'
  let g:python3_host_prog = '/usr/bin/python3'
endif
if has('mac')
  let g:python_host_prog = '/Users/mash/anaconda3/envs/neovim2/bin/python'
  let g:python3_host_prog = '/Users/mash/anaconda3/envs/neovim/bin/python'
endif


" reset augroup
augroup MyAutoCmd
    autocmd!
augroup END

if &runtimepath !~ '/dein.vim'
    let s:dein_repo_dir = s:dein_cache_dir . '/repos/github.com/Shougo/dein.vim'

    " Auto Download
    
    if !isdirectory(s:dein_repo_dir)
        execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
    endif

    " dein.vim をプラグインとして読み込む
    execute 'set runtimepath+=' . fnamemodify(s:dein_repo_dir, ':p')

endif

" dein.vim settings
let g:dein#install_max_processes = 16
let g:dein#install_progress_type = 'title'
let g:dein#install_message_type = 'none'
let g:dein#enable_notification = 1

if dein#load_state(s:dein_cache_dir)
    call dein#begin(s:dein_cache_dir)

    call dein#load_toml(s:nvim_config_dir . '/dein.toml', {'lazy': 0})
    call dein#load_toml(s:nvim_config_dir . '/deinlazy.toml', {'lazy': 1})

    call dein#end()
    call dein#save_state()
endif

"if has('vim_starting') && dein#check_install()
if dein#check_install()
    call dein#install()
endif
" }}}

filetype plugin indent on
syntax enable
colorscheme iceberg

runtime! options.rc.vim
runtime! keymap.rc.vim
