# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#######################################    My    #######################################  
# ==================Useless=================
alias coc_java_clear='rm -rf ~/.config/coc/extensions/coc-java-data/*'
alias gcollect="find ~ -xdev \( -type f \( -name .DS_Store -o -name .directory -o -name ._.DS_Store -o -name logfile.wget -o -name core -o -name Thumbs.db -o -name \*.bck -o -name .\*.bck -o -iname .\*.bak -o -name .\*~ -o -name \*.o -o -name \*.ilg -o -name \*.nav -o -name \*.snm -o -name \*.vrb -o -name \*.log -o -name \*.blg -o -name \*.bcf -o -name \*-blx.bib -o -name \*.run.xml -o -name \*.synctex.gz -o -name \*.aux -o -name a.out -o -name DEADJOE -o -name \*~ -o -iname \*.bak -o -name \*.crashdump -o -name erl_crash.dump -o -name \*.fls -o -name \*.fdb_latexmk -o -name %tmp%\* \) \) -exec rm -fv {} \;"
# ==================Jupyter=================
alias to_py='jupytext --set-formats ipynb,py:percent'

# ==================ble==================
alias ble='source ~/ble.sh/out/ble.sh'

# ==================rust==================
. "$HOME/.cargo/env"

# ==================dart/flutter==================
export PATH="$PATH:/home/fcb/flutterdev/flutter/bin"
export PATH="$PATH:/usr/lib/dart/bin"

# ==================java==================
export PATH="$PATH:/home/fcb/aspectj1.9/bin"
export CLASSPATH=".:/home/fcb/aspectj1.9/lib/aspectjrt.jar"
export CLASSPATH="$CLASSPATH:/usr/share/java/javassist.jar"

alias javaformat="java -jar /home/fcb/Documents/master-courses/advanced-programming-techniques/google-java-format-1.15.0-all-deps.jar -r"
alias javaformatall="java -jar /home/fcb/Documents/master-courses/advanced-programming-techniques/google-java-format-1.15.0-all-deps.jar -r *.java"

# ==================python==================
export ANTLR4_JAR="/home/fcb/Documents/master-courses/linguaggi-e-traduttori/lecture/jars/antlr-4.12.0-complete.jar"

# ==================STM32===========
alias stm32cubeide='/opt/st/stm32cubeide_1.11.2/stm32cubeide &'
STM32_Programmer_CLI() {
    /opt/st/stm32cubeide_1.11.2/plugins/com.st.stm32cube.ide.mcu.externaltools.cubeprogrammer.linux64_2.0.500.202209151145/tools/bin/STM32_Programmer_CLI -c port=swd -w "$1" -rst
}
# alias STM32_Programmer_CLI="/opt/st/stm32cubeide_1.11.2/plugins/com.st.stm32cube.ide.mcu.externaltools.cubeprogrammer.linux64_2.0.500.202209151145/tools/bin/STM32_Programmer_CLI -c port=swd -w " # -rst
alias STM32_Generate_Compile_Commands='bear -- make -j8 all -C ./Debug/'
export PATH="$PATH:/opt/st/stm32cubeide_1.11.2/plugins/com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.linux64_1.0.100.202210260954/tools/bin" # /arm-none-eabi-gcc"


# ==================xrandr===========
alias start_second_monitor_right='xrandr --output HDMI-1-0 --auto --right-of eDP-1'
alias start_second_monitor_left='xrandr --output HDMI-1-0 --auto --left-of eDP-1'
alias start_second_monitor_above='xrandr --output HDMI-1-0 --auto --above eDP-1'
alias start_second_monitor_below='xrandr --output HDMI-1-0 --auto --below eDP-1'

# function to add 1 the brightness with xrandr
brightness_p1() {
    xrandr --output eDP-1 --brightness $(echo "$(xrandr --verbose | grep -m 1 -i brightness | cut -f2 -d ' ') + 0.1" | bc)
}

brightness_m1() {
    xrandr --output eDP-1 --brightness $(echo "$(xrandr --verbose | grep -m 1 -i brightness | cut -f2 -d ' ') - 0.1" | bc)
}

# ==================xdg===========
open_pdf() { 
    nohup xdg-open "$1".pdf >/dev/null 2>&1 & 
}

# ==================upower===========
alias show_battery='upower -i /org/freedesktop/UPower/devices/battery_BAT1'

# ==================latex===========
export BIBINPUTS=${HOME}/Documents/adapt-lab/bibs:.
l4p() {  # it assumes to have $BIBINPUTS set and with the dir to look into as the first one
  BIB_DIR=${BIBINPUTS%%:*}
  grep -rin"$2" -ie "$1" "$BIB_DIR"/*.bib
}
vimbib() { # it assumes to have $BIBINPUTS set and with the dir to look into as the first one
  BIB_DIR=${BIBINPUTS%%:*}
  # local bibs=()
  # for bib in "$@"
  # do
  #    bibs+=($BIB_DIR/"$bib"".bib")
  # done
  local bibs=($@)
  bibs=("${bibs[@]/%/.bib}")
  bibs=( "${bibs[@]/#/$BIB_DIR/}" )
  echo "${bibs[@]}"

  vim -p "${bibs[@]}"
}
alias clearlatex='rm -rf *.aux *.log *.out *.toc *.bbl *.blg *.synctex.gz *.fdb_latexmk *.fls *.lot *.lof *.gz'
