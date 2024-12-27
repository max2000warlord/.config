set fish_greeting
if status is-interactive
end
sleep 0.075 && fastfetch

zoxide init fish | source
################################
#####       ALIASES       ######
################################
#Format = alias xxx="something"
alias asd="time sudo emerge -avuDN @world"
alias asc="sudo emerge -avuDU @world"
alias zxc="time sudo emerge -av"
alias cxz="sudo emerge --unmerge"
alias gc="gix clone"
alias cd="z"
alias xc="hyprctl dispatch exec"
alias exe="sudo chmod +x"
alias nv="nvim"
alias gpg-test="echo \"test\" | gpg --clearsign"
alias cfg="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias qqq="loginctl reboot"
alias spt="spotify_player"
alias sss="source ~/.config/fish/config.fish"
alias sshh="eval (ssh-agent -c) && ssh-add ~/.ssh/id_ed25519"
alias fw="sudo firewall-cmd"
alias ls="lsd -alh --color=auto"
alias az="yazi"
alias cmatrix='cmatrix -bC magenta && clear && fastfetch'

#######################
### PATH stuff etc. ###
#######################
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

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
set -Ux fish_history_time_format "%Y-%m-%d %H:%M:%S"
