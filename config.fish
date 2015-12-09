# Path to Oh My Fish install.
set -gx OMF_PATH /Users/alandgraf/.local/share/omf

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG /Users/alandgraf/.config/omf

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish


export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/code
export EDITOR=vim
alias gs='git status'
alias gd='git diff'
alias gc='git commit -am'
alias sp='./manage.py shell_plus'
alias runserver='./manage.py runserver'
alias serve='python -m SimpleHTTPServer'

# virtualfish like vitualenv, but for fish
eval (python -m virtualfish auto_activation compat_aliases)

function seedPostActivate --on-event virtualenv_did_activate:seed-3
    set -gx DJANGO_SETTINGS_MODULE BE.settings.dev
end
