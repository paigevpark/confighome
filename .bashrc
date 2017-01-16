# PATH and MANPATH initialization -
# there are several different path subvariables
# changed by various files

# STANDARD - contain standard OS executables and 
#            and man pages, etc.
# LOCAL    - contain local programs and man pages
# OVERRIDE - contains prgrams that are to override
#	     all other versions
# MY       - contains my executables

STANDARD_PATH=/bin:/usr/local/bin:/usr/bin:/usr/ccs/bin:/usr/sbin:/usr/etc:/etc/:/usr/openwin/bin:/usr/bin/X11
LOCAL_PATH=/bin:/usr/local/bin:/usr/ucb:/usr/bin/X11::/usr/X11/bin:/opt/SUNWspro/bin:/opt/SUNWmotif/bin
MY_PATH=${HOME}/bin

STANDARD_MANPATH=/usr/man:/usr/share/man:/usr/X11R5/man
LOCAL_MANPATH=/usr/local/man
MY_MANPATH=${HOME}/man

alias grep="grep --color=auto"
HOST=`hostname`

export ARCH=`uname -m`
export UNAME=`uname`


PATH=$MY_PATH:$LOCAL_PATH:$STANDARD_PATH:.
MANPATH=$MY_MANPATH:$LOCAL_MANPATH:$STANDARD_MANPATH:.
export MANPATH


# this causes a script to run that requests the user change their password the
# first time that they log in - it then erases itself
#/bin/sh .FIRST_TIME
howto=/cs/projects/solar/LynxProject/HowTos
solar=/cs/projects/solar/paigepark

PS1="@\h \w :v) "
PATH=$PATH:~/bin
alias swipl="env -i swipl"
alias ll="ls -l"
alias restart="source ~/.bashrc"
#alias gcc="gcc -Wall -g -std=gnu1x -I/cs/www/classes/cs352/fall15/h"
alias gcc="gcc -Wall -g" 

alias vg="valgrind --leak-check=full"
export LC_COLLATE=C
umask 007
alias irb="irb --prompt simple -r irb/completion"
