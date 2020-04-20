# Git branch display
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

COLOR_DEF=$'\e[0m'
COLOR_USR=$'\e[38;5;243m'
COLOR_DIR=$'\e[38;5;197m'
COLOR_GIT=$'\e[38;5;39m'
setopt PROMPT_SUBST
export PROMPT='${COLOR_USR}%n ${COLOR_DIR}%~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} $ '

# Git
alias gst='git status'
alias gcl='git checkout master && git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias ga='git add'
alias gcm='git commit'

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Zsh profile related
alias sz='source ~/.zshrc'
alias z='nv ~/.zshrc'

# neovim
alias nv='nvim'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
