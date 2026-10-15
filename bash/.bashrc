# .bashrc

export EDITOR=nvim
export VISUAL=nvim
export HISTSIZE=100000
export HISTCONTROL=ignoreboth:erasedups
export CLICOLOR=1

#Expand directory variables
shopt -s direxpand

stty -ixon

# OS specific config (bash-darwin / bash-linux stow packages) and other drop-ins.
# Loaded before the prompt setup since darwin.sh / linux.sh provide __git_ps1.
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        [ -f "$rc" ] && . "$rc"
    done
fi
unset rc

alias kc="kubectl"
alias tg="terragrunt"
alias space='du -hsx * | sort -rh | head -10'
complete -F __start_kubectl kc

# If the function __git_ps1 is NOT defined, create a dummy
if ! type __git_ps1 > /dev/null 2>&1 ; then
    __git_ps1() { echo ; }
fi

GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWDIRTYSTATE=1

#PROMPT_COMMAND='__git_ps1 "[\[\e[0;33m\]\u\[\e[0;m\]@\h \W"] "\\\$ "'
PROMPT_COMMAND='__git_ps1 "\[\e[0;33m\]\u\[\e[0;m\]@\h \[\e[1;34m\]\W\[\e[0;m\]" " ❯ " " on  %s"'

command -v fzf > /dev/null && eval "$(fzf --bash)"
command -v zoxide > /dev/null && eval "$(zoxide init bash)"
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1E1E2E,spinner:#F5E0DC,hl:#F38BA8 \
--color=fg:#CDD6F4,header:#F38BA8,info:#CBA6F7,pointer:#F5E0DC \
--color=marker:#B4BEFE,fg+:#CDD6F4,prompt:#CBA6F7,hl+:#F38BA8 \
--color=selected-bg:#45475A \
--color=border:#6C7086,label:#CDD6F4"

###########################################################
## Stolen from https://github.com/robbyrussell/oh-my-zsh ##
###########################################################

# Outputs the name of the current branch
# Usage example: git pull origin $(git_current_branch)
# Using '--quiet' with 'symbolic-ref' will not cause a fatal error (128) if
# it's not a symbolic ref, but in a Git repo.
function git_current_branch() {
  local ref
  ref=$(command git symbolic-ref --quiet HEAD 2> /dev/null)
  local ret=$?
  if [[ $ret != 0 ]]; then
    [[ $ret == 128 ]] && return  # no git repo.
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return
  fi
  echo ${ref#refs/heads/}
}

alias pushbr='git push -u origin $(git_current_branch)'

# Machine specific config (not in dotfiles), sourced last so it can override anything above
[ -f ~/.bashrc_local ] && . ~/.bashrc_local
