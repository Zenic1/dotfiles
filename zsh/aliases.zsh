##
## Aliases

alias run='pnpm run'
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
alias kdeconnect-cli='~/.local/share/gnome-shell/extensions/gsconnect@andyholmes.github.io/service/daemon.js'
alias pipupdate="pip3 list -o | cut -f1 -d' ' | tr " " "\n" | awk '{if(NR>=3)print}' | cut -d' ' -f1 | xargs -n1 pip3 install -U"
alias qemuusb='qemu-system-x86_64 -net nic -net user,smb=/run/media/zenic/386C-3AC6 -smp 2 -cpu host -enable-kvm -m 8192 -drive format=qcow2,file=/data/virt/win10.qcow2'
alias pls='sudo $(fc -ln -1)'
alias ytbest='yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best"'
eval $(thefuck --alias)

function qemusmb(){
	qemu-system-x86_64 -net nic -net user,smb="$1" -smp 2 -cpu host -enable-kvm -m 8192 -drive format=qcow2,file=/data/virt/win10.qcow2
}


