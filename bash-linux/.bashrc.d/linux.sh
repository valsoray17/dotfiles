# Linux (Fedora) specific bash config

# Source global definitions
[ -f /etc/bashrc ] && . /etc/bashrc
[ -r /usr/share/git-core/contrib/completion/git-prompt.sh ] && . /usr/share/git-core/contrib/completion/git-prompt.sh
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

alias open='xdg-open'
alias l='ll'
alias upgrade='sudo dnf upgrade --refresh'
alias matrix='cmatrix -abC white'
# old X11 stuff
alias screen='import ~/tmp/$(date +%F_%H%M%S_%N).png'
