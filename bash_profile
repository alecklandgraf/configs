export CLICOLOR='true'
export LSCOLORS="gxfxcxdxbxegedabagacad"
export ARCHFLAGS='-arch i386 -arch x86_64'

alias ll='ls -lh'
alias ks='ls'
alias du='du -h -d 1'
alias df='df -h'
alias la='ls -la'
alias ipconfig='ifconfig'
alias sp='python manage.py shell_plus'

function parse_git_branch {
git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/*[\t]\(.*\)/\ git\ \1/'
}

function parse_hg_branch {
hg branch 2> /dev/null | sed -e 's/\(.*\)/\ hg\ \1/'
}

alias glog='git log --graph --pretty=format:'\''%Cred%h%Creset-%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\''--abbrev-commit --date=relative'

# 32m = green, 00m returns to default color
PS1="$PS1\[\033[0;32m\]\$(parse_git_branch)\[\033[00m\] "
# 35m = purple
export PATH=$PATH:~/bin
set -o vi



### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

#### Start BE config ####
. ~/.flintrc
#### End BE config ####
