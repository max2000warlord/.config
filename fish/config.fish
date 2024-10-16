if status is-interactive
    # Commands to run in interactive sessions can go here

    fastfetch
end
zoxide init fish | source

################################
#####       ALIASES       ######
################################
alias asc="paru -Sua"
alias asd="sudo pacman -Syu --noconfirm"
alias cat="bat -n"
alias ctl="sudo systemctl"
alias doom="emacs -nw"
alias emacs="emacs -nw"
alias exe="sudo chmod +x"
alias gc="git clone"
alias img="swayimg"
alias klar="clear && freshfetch"
alias ld="lsd -l --color=auto"
alias ls="ls -l --color=auto"
alias noc="noconfirm"
alias nvm="nvim"
alias qqq="reboot"
alias qwd="pacman -Qii"
alias top="amdgpu_top"
alias xcv="sudo pacman -Si"
alias zxc="sudo pacman -S"
alias cxz="sudo pacman -R"
alias ctl="sudo systemctl"
alias sss="source ~/.config/fish/config.fish"
alias sshh="eval (ssh-agent -c) && ssh-add ~/.ssh/id_ed25519"
alias fw="sudo firewall-cmd"
#alias xxx="something"

#######################
### PATH stuff etc. ###
#######################
export EDITOR="nvim"
export VISUAL="nvim"
set NPM_PACKAGES "$HOME/.npm-packages"
set PATH $PATH $NPM_PACKAGES/bin
set MANPATH $NPM_PACKAGES/share/man $MANPATH
set -x LD_LIBRARY_PATH /home/max/.local/lib/arch-mojo $LD_LIBRARY_PATH
