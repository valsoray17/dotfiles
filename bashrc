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

alias upgrade="sudo dnf upgrade --refresh"
alias unix="curl -L git.io/unix"
stty -ixon

#Maven Stuff
export M2_HOME=/opt/apache/apache-maven-3.3.9
export M2=$M2_HOME/bin
export PATH=$PATH:$HOME/bin:$M2
mvnp(){
	mvn ${@%${!#}} -pl ${!#} -am
};
