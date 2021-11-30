#!/usr/bin/env bash

# Install tools using Homebrew.

echo "installing homebrew"
# install homebrew https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Installs Casks
brew tap homebrew/cask
brew tap heroku/brew

# Install utilities
brew install tree
brew install direnv
brew install heroku
# brew install mongodb

# Apps I use
brew install alfred
brew install bartender
brew install dropbox
brew install google-chrome #Chrome
brew install firefox
brew install iterm2
brew install notion
brew install spotify
brew install visual-studio-code
brew install itsycal
brew install dash
brew install rocket
brew install appcleaner
brew install avibrazil-rdm # For setting screen size
brew install alt-tab
brew install quicklook-json
brew install numi

# Remove outdated versions from the cellar.
brew cleanup