# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
HISTFILESIZE=12000
HISTSIZE=6000

shopt -s histappend

export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
