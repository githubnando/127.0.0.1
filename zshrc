#################
#### GENERAL ####
#################

export ZSH="$HOME/.oh-my-zsh"
export EDITOR="/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron"
export PATH=$PATH:$HOME/.composer/vendor/bin
ZSH_THEME="spaceship"
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#41A4A8,bold,underline"
DISABLE_AUTO_TITLE="true"

plugins=(
    git 
	# zsh-autosuggestions
    zsh-syntax-highlighting
    alias-tips
)


test -e "${HOME}/.iterm2_shell_integration.zsh"
. "${HOME}/.iterm2_shell_integration.zsh"
. $ZSH/oh-my-zsh.sh
. $ZSH/custom/themes/spaceship.zsh-theme

###################
#### FUNCTIONS ####
###################
function prj { 
	cd /Users/macnando/Documents/Projects/Coding/personal/$1 && title
}

function prw { 
	cd /Users/macnando/Work/Hostdime/$1 && title
}

function cpc { 
    mkdir -p $2 && cp $1 "$2/$1"
}

function refresh-agent {
    killall ssh-agent; eval $(ssh-agent -s); ssh-add ~/.ssh/$1
}

add-zsh-hook precmd title

################˛
#### DOCKER ####
################

alias ddown='docker rm $(docker ps -aq | head -1) -f'
alias datt="docker start $1 && docker attach $1"
alias dup='docker-compose up'
alias dud='dup -d'
alias down='docker-compose down'
alias up='down && dud'

##############
#### MISC ####
##############

alias artisan='php artisan'
alias last-test-file='find tests -xdev -type f -print0 | xargs -0 stat -f "%m%t%Sm %N" | sort -rn | head -n 1 | cut -d" " -f5'
alias kill-me-now='git branch --merged | egrep -v "(^\*|master|develop)" | xargs git branch -d'
alias zz='source ~/.zshrc'
alias gbr='git checkout master && git branch @{-1} -D'
alias personal='refresh-agent personal'
alias work='refresh-agent work'
alias slack-me="mogrify -resize 128x128 -unsharp 2x1.4+0.5+0 -quality 100 -verbose"
alias pipipi-popopo='g commit -m "$(curl --silent https://whatthecommit.com/index.txt)"'
