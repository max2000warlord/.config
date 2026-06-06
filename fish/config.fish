if status is-interactive
    # Commands to run in interactive sessions can go here
end
#fastfetch
set fish_greeting
set fish_key_bindings fish_default_key_bindings
set -U tide_left_prompt_prefix \ue0c2
set -U tide_left_prompt_suffix \ue0c0
set -U tide_os_icon \ue61e
set -U tide_pwd_bg_color 1DB954
set -U tide_left_prompt_separator_diff_color \ue0c0
zoxide init fish | source
fastfetch

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
alias ls='lsd -lAh'
alias man='batman'

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
alias yay='paru'

##################
### PATH stuff ###
##################
set -gx PATH ~/.local/bin $PATH
set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths
set -x LD_LIBRARY_PATH $HOME/.local/lib/arch-mojo $LD_LIBRARY_PATH
fish_add_path /opt/fil/bin
# bun
#set --export BUN_INSTALL "$HOME/.bun"
#set --export PATH $BUN_INSTALL/bin $PATH
fish_add_path /home/max/.pixi/bin

#CUDA
set -gx ANDROID_HOME /opt/android-sdk
set -gx PATH $PATH $ANDROID_HOME/cmdline-tools/latest/bin
set -gx PATH $PATH $ANDROID_HOME/platform-tools
set -gx CUDA_HOME /opt/cuda
set -gx CUDA_ROOT /opt/cuda
set -gx PATH /opt/cuda/bin $PATH
set -x LD_LIBRARY_PATH /opt/cuda/lib64 $LD_LIBRARY_PATH
set -x GPG_TTY (tty)

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /home/max/.lmstudio/bin
# End of LM Studio CLI section
