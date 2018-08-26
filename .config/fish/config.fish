#
### python environment setting
#

#set -x PYENV_ROOT $HOME/.pyenv
#set -x PATH $PYENV_ROOT/bin $PATH
#eval (pyenv init -)

#set -x PATH $PYENV_ROOT/versions/anaconda3-4.1.1/bin $PATH
#source (conda info --root)/bin/conda.fish

#
### neovim environment setting
#

# set -x XDG_CONFIG_HOME $HOME/.config
# set -x CONDA_PATH $XDG_CONFIG_HOME/fish/functions/conda.fish
# if [ -L $CONDA_PATH   ]
#   echo "ファイルが存在します"
# else
#   echo "ファイルが存在しません"
#   # ln -s (conda info --root)/etc/fish/conf.d/conda.fish $CONDA_PATH
# end

# validate "conda activate"
# source (conda info --root)/etc/fish/conf.d/conda.fish

#set -x PS1 User \u Host \h \[\033[01;32m\]\w/\[\033[00m\]\n$
#

#
### nvm setting
#
#
#set -x NVM_DIR $HOME/.nvm
#. "/usr/local/opt/nvm/nvm.sh"



#
### github setting
#

set -x HOMEBREW_GITHUB_API_TOKEN 2ccd2da137990ef9308c469ac8058482a980b318

#
### alias setting
#

alias la 'ls -Gla'
alias ll 'ls -Gl'


#
### anyenv setting
#
#
#if [ -d $HOME/.config/anyenv ] ; then
#    set -x PATH $HOME/.config/anyenv/bin $PATH
#    eval $(anyenv init -)
#    # tmux対応
#    for D in ls $HOME/.config/anyenv/envs
#    do
#        set -x PATH $HOME/.config/anyenv/envs/$D/shims $PATH
#    done
#fi
