if status is-interactive
    # Commands to run in interactive sessions can go here
    fastfetch
end
set fish_greeting
set -x QT_QPA_PLATFORMTHEME qt6ct
zoxide init fish | source

###################
###   ALIASES   ###
###################
alias cat='bat'
alias doom='~/.emacs.d/bin/doom'
alias exe='sudo chmod +x'
alias fss='source ~/.config/fish/config.fish'
alias gc='git clone'
alias klar='clear && freshfetch'
alias qqq='reboot'
alias sshh='eval (ssh-agent -c) && ssh-add ~/.ssh/id_ed25519'


### Pacman/Paru stuff ###
alias zxc='sudo pacman -S'
alias cxz='sudo pacman -Rs --noconfirm'
alias qsd='sudo pacman -Qii'
alias spt='spotify_player'
alias frx='cargo run --package editor --release'
alias qwd='paru'
alias cleanup='sudo pacman -Scc --noconfirm'
alias asc='paru -Sua'
alias asd='sudo pacman -Syu --noconfirm'
alias ctl='sudo systemctl'
alias sss='source ~/.config/fish/config.fish'

##################
### PATH stuff ###
##################
set -gx PATH ~/.local/bin $PATH
set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths
set -x LD_LIBRARY_PATH $HOME/.local/lib/arch-mojo $LD_LIBRARY_PATH
