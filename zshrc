export ZSH="/Users/ernando.desouzasilva/.oh-my-zsh"
ZSH_THEME="spaceship"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#41A4A8,bold,underline"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

################
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
alias slack-me="mogrify -resize 128x128 -unsharp 2x1.4+0.5+0 -quality 100 -verbose"
alias lastModifiedTestFile='find tests -xdev -type f -print0 | xargs -0 stat -f "%m%t%Sm %N" | sort -rn | head -n 1 | cut -d" " -f5'
alias EXTERMINATE='git branch --merged | egrep -v "(^\*|master|develop)" | xargs git branch -d'
alias zz='source ~/.zshrc'