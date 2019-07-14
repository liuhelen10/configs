
# Git branch display
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# Git
alias gst='git status'
alias gcl='git checkout master && git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias ga='git add'
alias gcm='git commit'

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Bash profile related
alias source_profile='source ~/.bash_profile'
alias profile='nv ~/.bash_profile'
alias nv='nvim'
alias rsync='~/Work/hacktools/sync-to-onebox-v3.sh'

# NVM
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"
  . "/usr/local/opt/nvm/nvm.sh"

# pyenv
export PATH="/usr/local/bin:/Users/helenliu/.pyenv/bin:$PATH"
source '/Users/helenliu/Work/awsaccess/awsaccess2.sh' # awsaccess
export PS1="\$(ps1_mfa_context)$PS1" # awsaccess

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
