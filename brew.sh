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

## Apps I use
brew install alfred
brew install dropbox
brew install google-chrome #Chrome
brew install firefox #Firefox
brew install iterm2
brew install notion
brew install spotify
brew install visual-studio-code
brew install itsycal
brew install dash
brew install rocket
brew install appcleaner

# Remove outdated versions from the cellar.
brew cleanup