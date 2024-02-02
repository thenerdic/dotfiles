#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

MAUVE='\e[38;2;198;160;246m\]'

export TERM=xterm-256color

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias nv='nvim'
alias tmux='tmux -2'
#PS1='[\u@\h \W]\$ ' # keep incase I need to revert back to default
#PS1='[\u@\h \W]\$ ' # for testing later
PS1='[\[\e[38;5;220m\]\u\[\e[0m\]@\[\e[38;5;72m\]\h\[\e[0m\] \[\e[38;5;210m\]\W\[\e[0m\]]\n\$ '


if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source "$HOME/.bash-git-prompt/gitprompt.sh"
fi


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
