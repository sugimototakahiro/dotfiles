#
### bash_profile setting
#


#
### nvm setting
#

export NVM_DIR=$HOME/.nvm
source $(brew --prefix nvm)/nvm.sh
nvm use 8

#
### git setting
#


#
### neovim environment setting
#

export XDG_CONFIG_HOME="$HOME/.config"


#
### python surtr environment setting
#

PYENV_NAME="anaconda3-4.4.0"
PYTHON_VERSION="python3.5"
DIR_NAME=surtr
export ACTIVATE_PY_SURTR=~/.pyenv/versions/anaconda3-4.4.0/envs/surtr/bin/activate
PY_SITE_PACKAGE_PATH=~/.pyenv/versions/anaconda3-4.4.0/envs/surtr/lib/python3.5/site-packages
# ln -si ~/develop/${DIR_NAME} ${PY_SITE_PACKAGE_PATH}/${DIR_NAME}

# added by miniconda installer
export PATH="/usr/local/miniconda3/bin:$PATH"

# get text
export PATH="/usr/local/opt/gettext/bin:$PATH"

# openssl
export PATH="/usr/local/opt/openssl/bin:$PATH"

test -r ~/.bashrc && . ~/.bashrc
