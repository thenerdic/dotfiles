#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export TERM=xterm-256color

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias nv='nvim'
alias tmux='tmux -2'

MAUVE='\e[38;2;198;160;246m\]'
RED='\e[38;2;237;135;150m\]'
GREEN='\e[38;2;166;218;149m\]'

# TODO: replace color below with variables

#PS1='[\u@\h \W]\$ ' # keep incase I need to revert back to default
PS1='[\[\e[38;2;203;166;247m\]\u\[\e[0m\]@\[\e[38;2;243;139;168m\]\h\[\e[0m\] \[\e[38;2;145;215;227m\]\W\[\e[0m\]]\[\e[0m\]\n\$\[\e[38;2;202;211;245m\] ' # new main prompt 

if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source "$HOME/.bash-git-prompt/gitprompt.sh"
fi

export PATH=$PATH:/usr/local/go/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
