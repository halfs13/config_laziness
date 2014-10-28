set path=( /usr/local/bin $path /Users/halfs13/bin )

set prompt="[%c3][%h]%# "

set filec
set autolist

set history = 100
set savehist = 25

alias ls "ls -FG"
alias ll "ls -alFG"
alias la "ls -aFG"
alias rf "rm -rf"
alias cp "cp -v"
alias mv "mv -v"
alias cpr "cp -rv"

setenv JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.7.0_72.jdk/Contents/Home
setenv  JAVA_OPTS "-Xmx1024m -Xms512m -XX:PermSize=128m -XX:MaxPermSize=256m"

switch ($TERM)
    case "xterm*":
    alias precmd 'printf "\033]0;$cwd\007"'
    breaksw
endsw
