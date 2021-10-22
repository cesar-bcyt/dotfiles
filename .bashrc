TERM=xterm

COLOR_RED="\033[0;31m"
COLOR_YELLOW="\033[0;33m"
COLOR_GREEN="\033[0;32m"
COLOR_OCHRE="\033[38;5;95m"
COLOR_BLUE="\033[0;34m"
COLOR_WHITE=""
COLOR_RESET="\033[0m"


function git_color {
  local git_status="$(git status 2> /dev/null)"

  if [[ ! $git_status =~ "working directory clean" ]]; then
    echo -e $COLOR_RED
  elif [[ $git_status =~ "Your branch is ahead of" ]]; then
    echo -e $COLOR_YELLOW
  elif [[ $git_status =~ "nothing to commit" ]]; then
    echo -e $COLOR_GREEN
  else
    echo -e $COLOR_OCHRE
  fi
}


function git_branch {
  local git_status="$(git status 2> /dev/null)"
  local on_branch="On branch ([^${IFS}]*)"
  local on_commit="HEAD detached at ([^${IFS}]*)"

  if [[ $git_status =~ $on_branch ]]; then
    local branch=${BASH_REMATCH[1]}
    echo "($branch)"
  elif [[ $git_status =~ $on_commit ]]; then
    local commit=${BASH_REMATCH[1]}
    echo "($commit)"
  fi
}



case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth
HISTSIZE=50
HISTFILESIZE=50
shopt -s checkwinsize

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w \$\[\033[00m\] '
else
	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w\$\[\033[00m\] '
fi
unset color_prompt force_color_prompt

case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
fi

alias pp="playerctl play-pause"
alias nn="playerctl next"
alias prev="playerctl previous"
alias sega="retroarch --config ~/.config/retroarch/retroarch.cfg --libretro ~/Genesis-Plus-GX/genesis_plus_gx_libretro.so"
alias co='git checkout'
alias ='ls'
alias s='scheme'
alias ..l='cd ..; ls'
alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'
alias r=irb
alias l=ls
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias mpl='mplayer'
alias m='mupdf'
alias p='python'
alias p3='python3.9'
alias p2='python2'
alias g='git'
alias gco='git checkout'
alias æ='links bing.com'
alias qemu='qemu-system-x86_64'
alias doc='pydoc'
alias gl='gcc -lGL -lGLU -lglut -lm'
alias wt='watch -n 1 python3 manage.py test'
alias t='python3 manage.py test'
alias trans='p ~/Code/api/demo.py'
alias pi='ssh pi@192.168.1.100'
alias run='python3 manage.py runserver 0:8000'
alias d='docker'
shopt -s extglob

# if [ -f ~/.bash_aliases ]; then
#     . ~/.bash_aliases
# fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

EDITOR=vim
export EDITOR
set -o vi
stty -ixon

PS1="\[$COLOR_WHITE\]\n[\W]"                # basename of pwd
PS1+="\[\$(git_color)\]"                    # colors git status
PS1+="\$(git_branch)"                       # prints current branch
PS1+="\[$COLOR_BLUE\]\$\[$COLOR_RESET\] "   # '#' for root, else '$'

export PS1
export PATH=$PATH:/home/cbravo/bin
alias dual='xrandr --output HDMI-A-0 --above eDP --mode 1920x1080 --rate 144.00'
alias mono='xrandr --output HDMI-A-0 --same-as eDP --mode 1920x1080'
alias mm='python3 manage.py makemigrations; python3 manage.py migrate'
alias tp='python3 manage.py shell_plus'
alias sl='ls'
alias dc='ls'
alias work='cd ~/STORE/;tmux'
alias freemon='watch "ps --sort -rss -eo pid,pmem,rss,vsz,comm | head -16"'
alias venv='python3 -m virtualenv .'
alias killc='killall -9 /usr/lib/chromium-browser/chromium-browser'
alias dc='cd'
alias send="rsync -ravzP"
export ANDROID_SDK=$HOME/Android/sdk
export ANDROID_HOME=~/Android/Sdk/
export PATH=/home/cbravo/Android/Sdk/platform-tools/:/home/cbravo/Android/Sdk/emulator:/home/cbravo/Android/Sdk/tools:$PATH
export PATH=$PATH:~/Android/Sdk/tools/bin/
export ANDROID_AVD_HOME=~/.android/avd/
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export PATH="$HOME/bin:$PATH"
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="$HOME/bin:$PATH"
export ANDROID_HOME=$HOME/Android/Sdk
export ANDROID_NDK_HOME=$HOME/Android/Sdk/ndk/22.1.7171670
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

complete -C '/usr/local/bin/aws_completer' aws
export PATH="$PATH:/opt/mssql-tools/bin"
