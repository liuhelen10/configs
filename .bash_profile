# Git branch display
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

setopt PROMPT_SUBST
export PROMPT='%F{grey}%n%f %F{cyan}%~%f %F{green}$(parse_git_branch)%f %F{normal}$%f '

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# Postgres
export PGDATA="/usr/local/var/postgres"

# Git
alias gst='git status'
alias gcl='git checkout master && git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias ga='git add'
alias gcm='git commit'

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Bash profile related
alias source_profile='source ~/.bash_profile'
alias profile='nv ~/.bash_profile'
alias nv='nvim'

# Sora
alias ssh_staging='ssh -i ~/work/honu_ssh_key_02Jan2019.pem ec2-user@10.0.8.30'
alias pg_dump_prod="pg_dump -d honu -h https://honu-production-postgres.ciy7cagrg9hd.us-west-1.rds.amazonaws.com/?pdxwnoemwrhovkkiufivchri4u=g5ss4akkgreizicsrbgsb5k26i -p 5432 -U honu -W -F t > honubackup.tar"

# NVM
# export NVM_DIR="$HOME/.nvm"
#  . "/usr/local/opt/nvm/nvm.sh"
#  . "/usr/local/opt/nvm/nvm.sh"
