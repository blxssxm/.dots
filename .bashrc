# ~/.bashrc
use_color=true

alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias more=less
alias n="nvim"
alias sn="sudo nvim"
alias nf="neofetch"
alias r="ranger"
alias rw="ranger /home/dawn/Work/"
alias rd="ranger /home/dawn/Documents/"
alias rdm="ranger /home/dawn/Documents/Manga"
alias rc="ranger /home/dawn/Work/Programming/C"
alias c="cd /home/dawn/Work/Programming/C"
alias py="cd /home/dawn/Work/Programming/Python"
alias tt="curl wttr.in"
alias t="tmux"
alias ytda="youtube-dl -q -x --audio-format mp3"
alias b="sudo tlp start && sudo auto-cpufreq --live"


#Default audio controls
alias up="amixer -q -D pulse sset Master 15%+"
alias down="amixer -q -D pulse sset Master 15%-"

#Change audio by certain interval
alias down5="amixer -q -D pulse sset Master 5%-"
alias up5="amixer -q -D pulse sset Master 5%+"



alias mute="amixer -q -D pulse sset Master toggle"
alias usb="ranger /run/media/dawn/6B45-AB64"


#RC
alias bashrc="nvim ~/.bashrc"
alias vimrc="nvim ~/.config/nvim/init.vim"
alias dunstrc="nvim ~/.config/dunst/dunstrc"
alias zathurarc="nvim ~/.config/zathura/zathurarc"
alias neofetchrc="nvim ~/.config/neofetch/config.conf"
alias qutebrowserrc="nvim ~/.config/qutebrowser/config.py"
alias xinitrc="nvim ~/.xinitrc"
alias dwmrc="sudo nvim ~/.dwm/config.h"
alias dmenurc="nvim /home/dawn/dmenu/config.h"
alias strc="sudo nvim ~/.st/config.h"
alias mocrc="nvim /home/dawn/.moc/config"

alias templates="cd /home/dawn/Work/Templates"
alias ls="exa --icons"
alias z="zathura"
alias pacman="sudo pacman"
alias flashcards="cd Work/Flashcards"
alias vifm="vifm /home/dawn"
alias 6cord="sudo 6cord"
#PS1="ᛋᛋ  "
PS1="⚡  "
shopt -s autocd

term="$(cat /proc/$PPID/comm)"
if [[ $term = "st" ]]; then
    transset-df "0.65" --id "$WINDOWID"  ⋗/dev/null
fi
xset -b
clear
clear
clear
clear
