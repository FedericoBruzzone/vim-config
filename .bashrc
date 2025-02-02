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

###################################### MY ########################################

#######################################  LS    ############################################
alias l='ls --color=always'
alias l.='ls -d .* --color=always'
alias ll='ls -lhrt --color=always'
alias lla='ls -lhrta --color=always'
alias lld='ls -lUd */ --color=always'
alias la='ls -a --color=always'

########################################   CD    ########################################
alias bd='cd "$OLDPWD"' # equivalent to : cd -
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias cdd='cd ~/Documents'
alias cdmc='cd ~/Documents/master-courses'

######################################## GIT ########################################
alias gstatus='git status -sb'
alias glog='git log --oneline'
alias glast='git log -1 HEAD --stat'
alias gdiff='git diff'

alias gremote='git remote -v'
alias gbranch='git branch -va'
alias gfetchupstream='git fetch upstream'
alias gmergeupstream='git merge upstream/main'
alias gfetchorigin='git fetch origin'
alias gmergeorigin='git merge origin/main'
alias gcheckoutmain='git checkout main'

alias gpull='git pull'
alias gadd='git add'
alias gadda='git add --all'
alias gcommit='git commit -s'
alias gcommitm='git commit -sm'
alias gpush='git push'
alias gpushf='git push --force'

alias gclearcache='git rm -r --cached .'

########################################  FAST  ########################################
alias v='nvim'
alias v.='nvim .'
alias c='clear'
alias ee='exit'
alias code.='code . && exit'
alias cp='cp -r'
alias rmhistory='rm ~/.bash_history'

######################################## FUNCTIONS ########################################
extract() {
  if [ -f "$1" ]; then
    case "$1" in
    *.tar.bz2) tar xvjf "$1" ;;
    *.tar.gz) tar xvzf "$1" ;;
    *.tgz) tar xvzf "$1" ;;
    *.tar.xz) tar xvJf "$1" ;;
    *.bz2) bunzip2 "$1" ;;
    *.rar) unrar x "$1" ;;
    *.gz) gunzip "$1" ;;
    *.tar) tar xvf "$1" ;;
    *.tbz2) tar xvjf "$1" ;;
    *.tgz) tar xvzf "$1" ;;
    *.zip) unzip "$1" ;;
    *.Z) uncompress "$1" ;;
    *.7z) 7z x "$1" ;;
    *.xz) unxz "$1" ;;
    *.exe) cabextract "$1" ;;
    *) echo "'$1': unrecognized file compression" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

pdf2png() {
  convert -density 300 "$1" -quality 100 -background white -alpha off "$2"/"${1%.*}.png"
}

ftext() {
  # -i case-insensitive
  # -I ignore binary files
  # -H causes filename to be printed
  # -r recursive search
  # -n causes line number to be printed
  # optional: -F treat search term as a literal, not a regular expression
  # optional: -l only print filenames and not the matching lines ex. grep -irl "$1" *
  grep -iIHrn --color=always "$1" . | less -r
}

ffile() {
  # find . -name "*word*" 2>/dev/null
  find . | grep --color=always "$1"
}

open_pdf() {
    nohup xdg-open "$1".pdf >/dev/null 2>&1 &
}

mkdircd() {
    [ $# = 1 ] && mkdir -p "$@" && cd "$@" || echo "Error - no directory passed!";
}

jupyter_notebook_clear_output() {
    jupyter nbconvert --clear-output --inplace "$1"
}

# ==================Useless=================
alias coc_java_clear='rm -rf ~/.config/coc/extensions/coc-java-data/*'
alias gcollect="find ~ -xdev \( -type f \( -name .DS_Store -o -name .directory -o -name ._.DS_Store -o -name logfile.wget -o -name core -o -name Thumbs.db -o -name \*.bck -o -name .\*.bck -o -iname .\*.bak -o -name .\*~ -o -name \*.o -o -name \*.ilg -o -name \*.nav -o -name \*.snm -o -name \*.vrb -o -name \*.log -o -name \*.blg -o -name \*.bcf -o -name \*-blx.bib -o -name \*.run.xml -o -name \*.synctex.gz -o -name \*.aux -o -name a.out -o -name DEADJOE -o -name \*~ -o -iname \*.bak -o -name \*.crashdump -o -name erl_crash.dump -o -name \*.fls -o -name \*.fdb_latexmk -o -name %tmp%\* \) \) -exec rm -fv {} \;"
# ==================jetbrains==================
alias jetbrainstoolbox='nohup ~/.local/share/JetBrains/Toolbox/bin/jetbrains-toolbox >/dev/null 2>&1 &'
alias intellij='nohup .local/share/JetBrains/Toolbox/apps/IDEA-C/ch-0/223.8617.56/bin/idea.sh >/dev/null 2>&1 &'
# ==================upower===========
alias show_battery='upower -i /org/freedesktop/UPower/devices/battery_BAT1'
# ==================Jupyter=================
alias to_py='jupytext --set-formats ipynb,py:percent'


# ==================rust==================
source "$HOME/.cargo/env"

# ==================java==================
export PATH="$PATH:/home/fcb/aspectj1.9/bin"
export CLASSPATH=".:/home/fcb/aspectj1.9/lib/aspectjrt.jar"
export CLASSPATH="$CLASSPATH:/usr/share/java/javassist.jar"

alias javaformat="java -jar /home/fcb/Documents/master-courses/advanced-programming-techniques/google-java-format-1.15.0-all-deps.jar -r"
alias javaformatall="java -jar /home/fcb/Documents/master-courses/advanced-programming-techniques/google-java-format-1.15.0-all-deps.jar -r *.java"

# ==================python==================
export ANTLR4_JAR="/home/fcb/Documents/master-courses/linguaggi-e-traduttori/lecture/jars/antlr-4.12.0-complete.jar"

# ==================C==================
# export C_INCLUDE_PATH=/opt/st/stm32cubeide_1.13.1/plugins/com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.linux64_1.1.0.202305231506/tools/arm-none-eabi/include

# ==================CPP==================
# export CPLUS_INCLUDE_PATH=/usr/include/c++/11:/usr/include/x86_64-linux-gnu/c++/11 # -I/usr/include/c++/11 -I/usr/include/x86_64-linux-gnu/c++/11 -L /usr/lib/gcc/x86_64-linux-gnu/11

export PATH=/home/fcb/.cache/rebar3/bin:$PATH

# ==================STM32===========
alias stm32cubeide='/opt/st/stm32cubeide_1.13.1/stm32cubeide &'
# alias STM32_Programmer_CLI="/opt/st/stm32cubeide_1.13.1/plugins/com.st.stm32cube.ide.mcu.externaltools.cubeprogrammer.linux64_2.1.0.202305091550/tools/bin/STM32_Programmer_CLI -c port=swd -w " # -rst

STM32_Clean_Rel () {
    make -j8 clean -C ./Release
}

STM32_Compile_Rel () {
    make -j8 all -C ./Release
}

STM32_Clean () {
    make -j8 clean -C ./Debug
}

STM32_Compile () {
    make -j8 all -C ./Debug
}
STM32_Generate_Make() { # $1 is the project name or all
    /opt/st/stm32cubeide_1.13.1/stm32cubeide -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild -data . -build "$1"
}
STM32_Flash() { # $1 is the path to the elf file
    /opt/st/stm32cubeide_1.13.1/plugins/com.st.stm32cube.ide.mcu.externaltools.cubeprogrammer.linux64_2.1.0.202305091550/tools/bin/STM32_Programmer_CLI -c port=swd -w "$1" -rst
}
alias STM32_Generate_Compile_Commands='bear -- make -j8 all -C ./Debug/'
# export PATH="$PATH:/opt/st/stm32cubeide_1.13.1/plugins/com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.linux64_1.0.100.202210260954/tools/bin" # /arm-none-eabi-gcc"
export PATH="$PATH:/opt/st/stm32cubeide_1.13.1/plugins/com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.11.3.rel1.linux64_1.1.0.202305231506/tools/bin" # /arm-none-eabi-gcc"

# ==================latex===========
alias clearlatex='rm -rf *.aux *.log *.out *.toc *.bbl *.blg *.synctex.gz *.fdb_latexmk *.fls *.lot *.lof *.gz *.idx *.ilg *.ind'
# export BIBINPUTS=${HOME}/Documents/adapt-lab/bibs:.
export BIBINPUTS=~/texmf/tex/latex/adapt-lab/bibs/:.

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

# ================== X =================
# defulat auto repeat delay:  660    repeat rate:  25
alias increase_r_rate='xset r rate 660 100'

# ==================  Picom  =================
alias start_picom='nohup picom --experimental-backends --config ~/.config/picom/picom.conf >/dev/null 2>&1 &'
alias stop_picom='killall picom'

# ==================ble==================
alias ble='source ~/ble.sh/out/ble.sh'

# ==================starship===========
# export STARSHIP_CONFIG=~/.config/starship.toml
eval "$(starship init bash)"

increase_r_rate
ble

