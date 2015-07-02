#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install homebrew packages
brew install grc coreutils spark

brew install nvm
# mkdir ~/.nvm
# cp $(brew --prefix nvm)/nvm-exec ~/.nvm/
# nvm install stable
# nvm use stable
# nvm alias default stable

brew cleanup

exit 0
