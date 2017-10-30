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

#Maven Stuff
export M2_HOME=/opt/apache/apache-maven-3.5.0
export M2=$M2_HOME/bin
mvnp(){
	mvn ${@%${!#}} -pl ${!#} -am
};

#Spring Stuff
export SPRING_HOME=/opt/spring/spring-2.0.0.BUILD-SNAPSHOT
export SPRING_BIN=$SPRING_HOME/bin

#Export PATH
export PATH=$PATH:$HOME/bin:$M2:$SPRING_BIN

# ALIASES
alias upgrade='sudo dnf upgrade --refresh'
alias matrix='cmatrix -abC white'
alias space='du -hsx * | sort -rh | head -10'
# Git Aliases
alias gc='git commit'
alias gca='git commit --amend'
alias gp='git push'
alias ga='git add'
alias gbr='git branch'
alias gd='git diff'
alias gdc='git diff --cached'
alias gst='git status'
