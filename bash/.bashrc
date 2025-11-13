# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
source /usr/share/git-core/contrib/completion/git-prompt.sh

#PS1='[\u@\h \W]$(__git_ps1 " (%s)")\$ '  # Default
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWDIRTYSTATE=1

PROMPT_COMMAND='__git_ps1 "[\[\e[0;33m\]\u\[\e[0;m\]@\h \W"] "\\\$ "'

if [ -f ~/.bashrc_local ]; then
	. ~/.bashrc_local
fi

#Expand directory variables
shopt -s direxpand

stty -ixon

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

. "$HOME/.cargo/env"

eval "$(fzf --bash)"
eval "$(zoxide init bash)"
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1E1E2E,spinner:#F5E0DC,hl:#F38BA8 \
--color=fg:#CDD6F4,header:#F38BA8,info:#CBA6F7,pointer:#F5E0DC \
--color=marker:#B4BEFE,fg+:#CDD6F4,prompt:#CBA6F7,hl+:#F38BA8 \
--color=selected-bg:#45475A \
--color=border:#6C7086,label:#CDD6F4"

# ALIASES
alias open='xdg-open'
alias l='ll'
alias upgrade='sudo dnf upgrade --refresh'
alias matrix='cmatrix -abC white'
alias space='du -hsx * | sort -rh | head -10'
# old X11 stuff
alias screen='import ~/tmp/$(date +%F_%H%M%S_%N).png'
