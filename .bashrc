# PATH and MANPATH initialization -
# there are several different path subvariables
# changed by various files

# STANDARD - contain standard OS executables and 
#            and man pages, etc.
# LOCAL    - contain local programs and man pages
# OVERRIDE - contains prgrams that are to override
#	     all other versions
# MY       - contains my executables
[[ $- != *i* ]] && return
# Arch latest news
#if [ "$PS1" ] && [[ $(ping -c1 www.google.com 2>&-) ]]; then
	# The characters "£, §" are used as metacharacters. They should not be encountered in a feed...
#	echo -e "$(echo $(curl --silent https://www.archlinux.org/feeds/news/ | sed -e ':a;N;$!ba;s/\n/ /g') | \
#		sed -e 's/&amp;/\&/g
#		s/&lt;\|&#60;/</g
#		s/&gt;\|&#62;/>/g
#		s/<\/a>/£/g
#		s/href\=\"/§/g
#		s/<title>/\\n\\n\\n   :: \\e[01;31m/g; s/<\/title>/\\e[00m ::\\n/g
#		s/<link>/ [ \\e[01;36m/g; s/<\/link>/\\e[00m ]/g
#		s/<description>/\\n\\n\\e[00;37m/g; s/<\/description>/\\e[00m\\n\\n/g
#		s/<p\( [^>]*\)\?>\|<br\s*\/\?>/\n/g
#		s/<b\( [^>]*\)\?>\|<strong\( [^>]*\)\?>/\\e[01;30m/g; s/<\/b>\|<\/strong>/\\e[00;37m/g
#		s/<i\( [^>]*\)\?>\|<em\( [^>]*\)\?>/\\e[41;37m/g; s/<\/i>\|<\/em>/\\e[00;37m/g
#		s/<u\( [^>]*\)\?>/\\e[4;37m/g; s/<\/u>/\\e[00;37m/g
#		s/<code\( [^>]*\)\?>/\\e[00m/g; s/<\/code>/\\e[00;37m/g
#		s/<a[^§|t]*§\([^\"]*\)\"[^>]*>\([^£]*\)[^£]*£/\\e[01;31m\2\\e[00;37m \\e[01;34m[\\e[00;37m \\e[04m\1\\e[00;37m\\e[01;34m ]\\e[00;37m/g
#		s/<li\( [^>]*\)\?>/\n \\e[01;34m*\\e[00;37m /g
#		s/<!\[CDATA\[\|\]\]>//g
#		s/\|>\s*<//g
#		s/ *<[^>]\+> */ /g
#		s/[<>£§]//g')\n\n";
#fi


STANDARD_PATH=/bin:/usr/local/bin:/usr/bin:/usr/ccs/bin:/usr/sbin:/usr/etc:/etc/:/usr/openwin/bin:/usr/bin/X11
LOCAL_PATH=/bin:/usr/local/bin:/usr/ucb:/usr/bin/X11::/usr/X11/bin:/opt/SUNWspro/bin:/opt/SUNWmotif/bin
MY_PATH=${HOME}/bin:/sbin:/usr/local/bin/npm:/usr/local/bin/grunt:/usr/local/bin/nvm

STANDARD_MANPATH=/usr/man:/usr/share/man:/usr/X11R5/man
LOCAL_MANPATH=/usr/local/man
MY_MANPATH=${HOME}/man

alias grep="grep --color=auto"
alias ls="ls -G --color=auto"
alias ll="ls -l -a -G --color=auto"
alias la="ls -a -G --color=auto"
alias ack="ack --smart-case"

HOST=`hostname`

export ARCH=`uname -m`
export UNAME=`uname`


PATH=$PATH:$MY_PATH:$LOCAL_PATH:$STANDARD_PATH:.
MANPATH=$MANPATH:$MY_MANPATH:$LOCAL_MANPATH:$STANDARD_MANPATH:.
export MANPATH

#\w will give you whole directory
#\W will give you current
PS1="[\u@\h@\w]\$ "
export PROMPT_DIRTRIM=3

PATH=$PATH:~/bin
alias swipl="env -i swipl"
alias ll="ls -l"
alias restart="source ~/.bashrc"
alias gcc="gcc -g" 
#alias gcc="gcc -Wall -g -std=gnu1x -I/cs/www/classes/cs352/fall15/h"
#alias gcc="gcc -Wall -g" 

alias vg="valgrind --leak-check=full"
export LC_COLLATE=C
umask 007
alias irb="irb --prompt simple -r irb/completion"

ssh-add

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
