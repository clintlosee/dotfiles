# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/clintlosee/.oh-my-zsh"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs newline status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MODE='nerdfont-complete'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="avit"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  iterm-tab-color
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# NVM settings
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/clintlosee/Applications/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/clintlosee/Applications/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/clintlosee/Applications/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/clintlosee/Applications/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"

# Set up PATH variables for GO
# export PATH="/usr/local/go/pkg/go-bindata/bin:$PATH"
# export PATH="/Users/clintlosee/Code/Go/bin:$PATH"

# export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

eval "$(direnv hook zsh)"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias dev="cd ~/Code"
alias ddev="cd ~/Dropbox/Code"
alias agent="cd ~/myagent"
alias agentstart="cd ~/myagent && ./run.sh"
alias agentrun="cd ~/myagent && ./run.sh"
alias brewstartpg="brew services start postgresql"
alias brewstoppg="brew services stop postgresql"
alias dockerprune="docker system prune -a"
# Open all merge conflicts or currently changed files in VS Code
alias fix="git diff --name-only | uniq | xargs code"
alias listglobal="npm list -g --depth 0"

alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
alias ll='ls -l'      #long list
alias lsa='ls -a'      #simple list

alias npkill='npx npkill' #run npkill to kill old node modules folders

alias pgstart="pg_ctl -D /usr/local/var/postgres start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop"
alias purge="sudo purge"
alias tg="cd ~/Code/TruGolf/web"
alias tgstart="cd ~/Code/TruGolf/web && npm start"
alias tgadmin="cd ~/Code/TruGolf/admin"
alias tgadminstart="cd ~/Code/TruGolf/admin && bundle exec rails server"
alias tgadminstartprod="cd ~/Code/TruGolf/admin && bundle exec rails server -e production"
alias tgnadmin="cd ~/Code/TruGolf/node-admin"
alias zshconfig="code ~/dotfiles/.zshrc"
alias zshreload="source ~/dotfiles/.zshrc"

#
# Git Plugin Aliases for reference
# (sorted alphabetically)
#

# alias g='git'

# alias ga='git add'
# alias gaa='git add --all'
# alias gapa='git add --patch'
# alias gau='git add --update'
# alias gav='git add --verbose'
# alias gap='git apply'
# alias gapt='git apply --3way'

# alias gb='git branch'
# alias gba='git branch -a'
# alias gbd='git branch -d'
# alias gbda='git branch --no-color --merged | command grep -vE "^(\+|\*|\s*($(git_main_branch)|development|develop|devel|dev)\s*$)" | command xargs -n 1 git branch -d'
# alias gbD='git branch -D'
# alias gbl='git blame -b -w'
# alias gbnm='git branch --no-merged'
# alias gbr='git branch --remote'
# alias gbs='git bisect'
# alias gbsb='git bisect bad'
# alias gbsg='git bisect good'
# alias gbsr='git bisect reset'
# alias gbss='git bisect start'

# alias gc='git commit -v'
# alias gc!='git commit -v --amend'
# alias gcn!='git commit -v --no-edit --amend'
# alias gca='git commit -v -a'
# alias gca!='git commit -v -a --amend'
# alias gcan!='git commit -v -a --no-edit --amend'
# alias gcans!='git commit -v -a -s --no-edit --amend'
# alias gcam='git commit -a -m'
# alias gcsm='git commit -s -m'
# alias gcb='git checkout -b'
# alias gcf='git config --list'
# alias gcl='git clone --recurse-submodules'
# alias gclean='git clean -id'
# alias gpristine='git reset --hard && git clean -dffx'
# alias gcm='git checkout $(git_main_branch)'
# alias gcd='git checkout develop'
# alias gcmsg='git commit -m'
# alias gco='git checkout'
# alias gcount='git shortlog -sn'
# alias gcp='git cherry-pick'
# alias gcpa='git cherry-pick --abort'
# alias gcpc='git cherry-pick --continue'
# alias gcs='git commit -S'

# alias gd='git diff'
# alias gdca='git diff --cached'
# alias gdcw='git diff --cached --word-diff'
# alias gdct='git describe --tags $(git rev-list --tags --max-count=1)'
# alias gds='git diff --staged'
# alias gdt='git diff-tree --no-commit-id --name-only -r'
# alias gdw='git diff --word-diff'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#
# Functions ==================
# ============================
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# function openall() {
#   for folder in */; do code $folder && open . -a iterm $folder; done
# }
