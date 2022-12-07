if [ -f /etc/bash_completion ]; then source /etc/bash_completion; fi

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# =======
# GPU cluster.

# An alias to be able to write 'ws_allocate test-workspace 30' instead of 
# 'ws_allocate -r 10 -m <user>@informatik.uni-freiburg.de test-workspace 30'.
# This command creates a workspace <user>-test-workspace, which expires in 30 days. 
# 10 days before the expiration, a notification is sent to the specified email address. 
# alias ws_allocate='ws_allocate -m korzen@informatik.uni-freiburg.de -r 10'

export HISTSIZE=1000000
export HISTFILESIZE=1000000
export HISTCONTROL=ignoreboth:erasedups
export PS1="\u@\h:\w$ "
export VISUAL=vim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export CRFPP_HOME=/usr/local
export LD_LIBRARY_PATH=/lib:/usr/lib:/usr/local/lib
export PATH=$PATH:~/.npm-global/bin:~/bin/intellij-idea/bin:~/.local/bin:

if [ -f $HOME/.bashrc_gen ]; then
    . $HOME/.bashrc_gen
fi

