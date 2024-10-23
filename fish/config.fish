fastfetch
set fish_greeting
if status is-interactive
end
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
alias exe="sudo chmod +x"
alias nv="nvim"
alias qqq="loginctl reboot"
alias ctl="sudo dinitctl"
alias sss="source ~/.config/fish/config.fish"
alias sshh="eval (ssh-agent -c) && ssh-add ~/.ssh/id_ed25519"
alias fw="sudo firewall-cmd"
alias ls="lsd -alh --color=auto"

#######################
### PATH stuff etc. ###
#######################
export EDITOR="nvim"
export VISUAL="nvim"
set NPM_PACKAGES "$HOME/.npm-packages"
set PATH $PATH $NPM_PACKAGES/bin
set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths
set MANPATH $NPM_PACKAGES/share/man $MANPATH
set -x LD_LIBRARY_PATH /home/max/.local/lib/arch-mojo $LD_LIBRARY_PATH
