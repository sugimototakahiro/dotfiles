#!/bin/sh
DOT_DIRECTORY="${HOME}/dotfiles"

cd ${DOT_DIRECTORY}

for f in .??*
do
  # 無視したいファイルやディレクトリはこんな風に追加してね
  [[ ${f} = ".git" ]] && continue
  [[ ${f} = ".gitignore" ]] && continue
  if [ ! -h ${HOME}/${f} ]; then
    ln -snfv ${DOT_DIRECTORY}/${f} ${HOME}/${f}
  fi
done
echo $(tput setaf 2)Deploy dotfiles complete!. ✔︎$(tput sgr0)
