if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

export PS1="#\#-\t-\h-\W\$"

alias ls="ls --color=auto"
alias ll="ls -al'
