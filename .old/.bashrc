#
######################################################################
#
#           ██████╗  █████╗ ███████╗██╗  ██╗██████╗  ██████╗
#           ██╔══██╗██╔══██╗██╔════╝██║  ██║██╔══██╗██╔════╝
#           ██████╔╝███████║███████╗███████║██████╔╝██║
#           ██╔══██╗██╔══██║╚════██║██╔══██║██╔══██╗██║
#           ██████╔╝██║  ██║███████║██║  ██║██║  ██║╚██████╗
#           ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
#
#
######################################################################

set -o vi

# HISTTIMEFORMAT="%F %T "

# HISTCONTROL=ignoredups

# HISTSIZE=2000

# HISTFILESIZE=2000

# shopt -s histappend

# blk='\[\033[01;30m\]'   # Black
# red='\[\033[01;31m\]'   # Red
# grn='\[\033[01;32m\]'   # Green
# ylw='\[\033[01;33m\]'   # Yellow
# blu='\[\033[01;34m\]'   # Blue
# pur='\[\033[01;35m\]'   # Purple
# cyn='\[\033[01;36m\]'   # Cyan
# wht='\[\033[01;37m\]'   # White
# clr='\[\033[00m\]'      # Reset


alias gs='git status'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit'
alias gl='git log --oneline'
alias gb='git checkout -b'
alias gd='git diff'

alias l='ls'            
alias l.='ls -d .*'     
alias ll='ls -lhrt'     
alias lld='ls -lUd */'  
alias la='ls -a'        

alias ..='cd ..;pwd'
alias ...='cd ../..;pwd'
alias ....='cd ../../..;pwd'
alias -- -="cd -"       
alias c='clear'
alias h='history'
alias tree='tree --dirsfirst -F'
alias mkdir='mkdir -p -v'

function find_largest_files() {
    du -h -x -s -- * | sort -r -h | head -20;
}

# function git_branch() {
#     if [ -d .git ] ; then
#         printf "%s" "($(git branch 2> /dev/null | awk '/\*/{print $2}'))";
#     fi
# }

# Set the prompt.
# function bash_prompt(){
#     PS1='${debian_chroot:+($debian_chroot)}'${blu}'$(git_branch)'${pur}' \W'${grn}' \$ '${clr}
# }

# bash_prompt
# screenfetch

# ==================alias=================
alias to_py='jupytext --set-formats ipynb,py:percent'
alias browsh='docker run -it --rm browsh/browsh'
export VIM_HOME=/home/federicobruzzoneplasma

alias ble='source ~/ble.sh/out/ble.sh'

# ==================rust==================
. "$HOME/.cargo/env"

# ==================dart/flutter==================
export PATH="$PATH:/home/federicobruzzoneplasma/Documents/flutterdev/flutter/bin"
export PATH="$PATH:/usr/lib/dart/bin"

# ==================java==================
export PATH="$PATH:/home/federicobruzzoneplasma/aspectj1.9/bin"
export CLASSPATH=".:/home/federicobruzzoneplasma/aspectj1.9/lib/aspectjrt.jar"
export CLASSPATH="$CLASSPATH:/usr/share/java/javassist.jar"

alias javaformat="java -jar /home/federicobruzzoneplasma/Documents/FedericoBruzzone/master-courses/advanced-programming-techniques/google-java-format-1.15.0-all-deps.jar -r"
alias javaformatall="java -jar /home/federicobruzzoneplasma/Documents/FedericoBruzzone/master-courses/advanced-programming-techniques/google-java-format-1.15.0-all-deps.jar -r *.java"

# ==================python==================
export ANTLR4_JAR="/home/federicobruzzoneplasma/Documents/FedericoBruzzone/master-courses/linguaggi-e-traduttori/lecture/jars/antlr-4.12.0-complete.jar"

# ==================starship===========
export STARSHIP_CONFIG=~/.config/starship.toml
HISTSIZE=1000
PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"
eval "$(starship init bash)"

######################################################################

ble
