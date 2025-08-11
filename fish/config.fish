if status is-interactive
    # Commands to run in interactive sessions can go here
end
sleep 0.075 && fastfetch
set fish_greeting
zoxide init fish | source

###################
###   ALIASES   ###
###################
alias az='yazi'
alias cat='bat'
alias doom='~/.emacs.d/bin/doom'
alias exe='sudo chmod +x'
alias fss='source ~/.config/fish/config.fish'
alias gc='gix clone'
alias klar='clear && freshfetch'
alias qqq='reboot'
alias sshh='eval (ssh-agent -c) && ssh-add ~/.ssh/id_ed25519'
alias nv='nvim'
alias xc='hyprctl dispatch exec'
alias ls='lsd -lah'

### Pacman/Paru stuff ###
alias zxc='sudo pacman -S'
alias cxz='sudo pacman -Rs --noconfirm'
alias qwd='pacman -Qii'
alias spt='spotify_player'
alias frx='cargo run --package editor --release'
alias cleanup='sudo pacman -Scc --noconfirm'
alias asd='paru'
alias asc='paru -Sua'
alias ctl='sudo systemctl'
alias sss='clear && source ~/.config/fish/config.fish'
alias ccc='clear && fastfetch'
alias sshh='eval (ssh-agent -c) && ssh-add ~/.ssh/id_ed25519'

##################
### PATH stuff ###
##################
set -gx PATH ~/.local/bin $PATH
set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths
set -x LD_LIBRARY_PATH $HOME/.local/lib/arch-mojo $LD_LIBRARY_PATH

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
fish_add_path /home/max/.pixi/bin
