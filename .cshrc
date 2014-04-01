# This is the default standard .cshrc provided to csh users.
# They are expected to edit it to meet their own needs.


if ( -o /bin/su ) then
        unset path
else
        set path = ( $HOME/bin )
endif 

set path=( $path /usr/share/grails/1.3.7/bin /usr/local/bin \
	  /usr/bsd /usr/bin /bin /usr/sbin \
          /sbin /usr/bin/X11 /home/halfs13/bin \
          /usr/local/X11 /etc /usr/etc \
	  /usr/lib/jvm/java-6-openjdk-amd64/bin/ \
	  /home/halfs13/workspace/pgs4a-0.9.4/android-sdk/tools/ \
	  /usr/share/grails/1.3.7/bin/ /opt/sublime_text/ . )

#
# load in machine-specific settings
#

if ( -r /usr/site/etc/system.cshrc ) then
        source /usr/site/etc/system.cshrc
endif

if ($?prompt) then
	if ( -o /bin/su ) then
		set prompt = "`hostname | sed 's/\..*//'`[\!]# "
	else
		set prompt = "`hostname | sed 's/\..*//' `[\!]> "
	endif

    setenv EDITOR /usr/bin/vim
    umask 022
    set history = 100
    set filec
    alias h  history
    alias help apropos
    alias rm "rm -i"
	alias ls "ls --color=auto"
    alias ll "ls -alF --color=auto"
	alias la "ls -aF --color=auto"
	alias add "cvs add"
	alias qup "cvs -q update"
	alias upd "cvs update -d"
	alias commit "cvs commit"
	alias remove "cvs remove"
	alias mv "mv -v"
	alias cp "cp -v"
	alias rf "rm -rfv"
	alias sublime "sublime_text"
	alias diskusage "sudo du -h /| grep '[0-9]G'"

	setenv LS_OPTIONS "--color=auto"
	setenv TERM xterm-256color
	setenv JAVA_HOME /usr/lib/jvm/java-6-openjdk-amd64/
	setenv ANT_HOME /usr/share/ant
	setenv GRAILS_HOME /usr/share/grails/1.3.7
	setenv GRADLE_HOME /usr/share/gradle-1.5
endif
