set fish_greeting
if status is-interactive
end
sleep 0.05 && fastfetch

zoxide init fish | source
################################
#####       ALIASES       ######
################################
#Format = alias xxx="something"
alias asd="sudo pacman -Syu --noconfirm"
alias asc="paru -Sua"
alias qwd="pacman -Qii"
alias zxc="sudo pacman -S"
alias cxz="sudo pacman -Rs"
alias gc="git clone"
alias cd="z"
alias xc="hyprctl dispatch exec"
alias exe="sudo chmod +x"
alias nv="nvim"
alias gpg-test="echo \"test\" | gpg --clearsign"
alias cfg="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias qqq="loginctl reboot"
alias ctl="sudo dinitctl"
alias spt="spotify_player"
alias sss="source ~/.config/fish/config.fish"
alias sshh="eval (ssh-agent -c) && ssh-add ~/.ssh/id_ed25519"
alias fw="sudo firewall-cmd"
alias ls="lsd -alh --color=auto"
alias az="yazi"
#alias sth=""

#######################
### PATH stuff etc. ###
#######################
export EDITOR="nvim"
export VISUAL="nvim"
set NPM_PACKAGES "$HOME/.npm-packages"
set PATH $PATH $NPM_PACKAGES/bin
set -Ux WP_PATH (cat ~/.cache/swww/eDP-1)
set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths
set -U fish_user_paths $HOME/.local/bin $fish_user_paths
set -U fish_user_paths $HOME/.local/scripts/ $fish_user_paths
set MANPATH $NPM_PACKAGES/share/man $MANPATH
set -x GDK_BACKEND wayland
set -x XDG_SESSION_TYPE wayland
set -x SSH_AUTH_SOCK (ssh-agent)
set -gx GPG_TTY (tty)
