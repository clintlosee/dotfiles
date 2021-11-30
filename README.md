# dotfiles

## (work-in-progress)

## Installation

On a fresh installation of macOS:

```bash
sudo softwareupdate -i -a
xcode-select --install
```

The Xcode Command Line Tools includes `git` and `make` (not available on stock macOS). Now there are two options:

1. Install this repo with `curl` available:

```bash
bash -c "`curl -fsSL https://raw.githubusercontent.com/clintlosee/dotfiles/master/remote-install.sh`"
```

This will clone or download, this repo to `~/dotfiles` depending on the availability of `git`, `curl` or `wget`.

1. Alternatively, clone manually into the desired location:

```bash
git clone https://github.com/clintlosee/dotfiles.git ~/dotfiles
```

======================

Now run the following:

1. Instal ZSH

```bash
source install-zsh.sh
```

2. Install Homebrew and programs

```bash
source brew.sh
```

3. Run .macos to set up Max settings

```bash
source .macos
```

## Restart your computer now
