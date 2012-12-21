# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="clean"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Aliases
#alias ls="ls -F --color"
alias grep='grep --color=auto'
alias grepper='egrep --color=auto -rI'
alias grepperi='grepper -i'

# rails aliases
alias brake="bundle exec rake"
alias braket="bundle exec rake test"
alias braketu="bundle exec rake test:units"
alias braketf="bundle exec rake test:functionals"

# directory navigation
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."


# Welcome text
TERMINAL_START=`date`
echo -e "${BIWhite}${TERMINAL_START}"
echo "Commands:"
echo -e "\tgrepper"
echo -e "\tgrepperi"
echo -e "\tbrake"
echo -e "\tbraket"
echo -e "\t..5"
echo -e "\tpushd/popd/dirs"

# Customize to your needs...
export PATH=/home/joshua/.rvm/gems/ree-1.8.7-2011.03/bin:/home/joshua/.rvm/gems/ree-1.8.7-2011.03@global/bin:/home/joshua/.rvm/rubies/ree-1.8.7-2011.03/bin:/home/joshua/.rvm/bin:/home/joshua/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"


