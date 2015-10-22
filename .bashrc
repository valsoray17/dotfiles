# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ms17="ssh -t quake ssh -t ms17"
alias ms18="ssh -t quake ssh -t ms18"
alias ms19="ssh -t quake ssh -t ms19"
alias ms20="ssh -t quake ssh -t ms20"
alias quake-tunnel="ssh -i ~/.ssh/id_rsa.q -ND 12345 quake"
alias iscp-query-all="/iscp/mse_ijas_admin -c LM -u admin:admin -t localhost -query APP_STATUS -app ALL | grep STARTED | grep -v LMList | wc -l"

stty -ixon
