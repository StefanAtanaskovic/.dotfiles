# ALIASES
alias ..="cd .."
alias l="ls -la"
alias tms="~/.dotfiles/tms.sh"

#git prompt
source ~/.dotfiles/git-prompt-helper.sh
export PS1='\e[0;32m->\e[0m \e[1;36m\W\e[0m\e[0;31m$(__git_ps1 " (%s)")\e[0m '

