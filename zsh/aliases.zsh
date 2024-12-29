##
## Aliases

alias q="exit"
alias cleanram="sudo sh -c 'sync; echo 3 > /proc/sys/vm/drop_caches'"
alias trim_all="sudo fstrim -va"
alias ..="cd .."
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e" 
alias mkdir="mkdir -p"
alias pac="pacman -Q | fzf"
alias pacupd="pacman -Qu"
alias pacclean='sudo pacman -Rns $(pacman -Qtdq); yay -c'
alias installed="grep -i installed /var/log/pacman.log"
alias cat="bat --color always --plain"
alias grep='grep --color=auto'
alias yeet='yay -Rsn'
alias ls='lsd'
alias clr='clear'
alias pacsearch='pacman -Qq | grep'
alias cdzsh='cd ~/.config/zsh'
alias cdcfg='cd ~/.config'
alias pls='sudo $(fc -ln -1)
alias cdhypr='cd ~/.config/hypr'
alias neofetch='fastfetch'
alias ssh="kitten ssh"
bitrate () {
    echo `basename "$1"`: `file "$1" | sed 's/.*, \(.*\)kbps.*/\1/' | tr -d " " ` kbps
}
optimize-flac(){
	ffmpeg -i "$1" -sample_fmt s16 -ar 44100 "NEW $1"
}
