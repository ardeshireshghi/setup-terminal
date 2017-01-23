#!/bin/bash
OS_NAME=$(uname)
if [[ "$OS_NAME" == "Linux" ]]; then
  sudo apt-get -y install zsh
elif [[ "$OS_NAME" == "Darwin" ]]; then
  if brew ls --versions myformula > /dev/null; then
    # The package is installed
  else
    # The package is not installed
    env ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  end
  brew install zsh zsh-completions
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone git://github.com/ndbroadbent/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh
source ~/.zshrc