# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#sunrise.zsh-theme
ZSH_THEME="sunrise-am"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    bundler
    encode64
    git
    gitfast
    history-substring-search
    rails
    rhc
    sublime
    tmux
    osx
    aws
)

source $ZSH/oh-my-zsh.sh

# User configuration

#add secrets to path
source $HOME/.secret_aws
fpath=(~/.secret_aws $fpath)

# Add homwbrew sbin to path
export PATH="/usr/local/sbin:$PATH"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

#NVM
 export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

#ruby
eval "$(rbenv init -)"

#brew cask autocompletions
fpath=(/usr/local/share/zsh-completions $fpath)


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
