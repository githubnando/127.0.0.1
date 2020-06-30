export ZSH="/Users/ernando.desouzasilva/.oh-my-zsh"
ZSH_THEME="spaceship"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#41A4A8,bold,underline"
DISABLE_AUTO_TITLE="true"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
. $ZSH/oh-my-zsh.sh
. ~/.nicom-aliases

function title() {
  echo -ne "\e]0;${PWD##*/}\a"
}

function project () {
    cd /Users/ernando.desouzasilva/projects/$1
    title
}

add-zsh-hook precmd title

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
alias last-test-file='find tests -xdev -type f -print0 | xargs -0 stat -f "%m%t%Sm %N" | sort -rn | head -n 1 | cut -d" " -f5'
alias kill-me-now='git branch --merged | egrep -v "(^\*|master|develop)" | xargs git branch -d'
alias personal='ln -sf ~/.ssh/personal ~/.ssh/id_rsa'
alias work='ln -sf ~/.ssh/personal ~/.ssh/id_rsa'
alias zz='source ~/.zshrc'


