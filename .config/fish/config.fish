/home/$USER/.local/share/rtx/bin/rtx activate -s fish | source

set -g EDITOR nvim
set -g AWS_REGION us-west-2
set -g ERL_AFLAGS "-kernel shell_history enabled shell_history_file_bytes 102400"
set -g KERL_BUILD_DOCS yes

fish_add_path ~/.local/bin
fish_add_path ~/src/ripgrep/target/release
fish_add_path ~/personal/dotfiles/scripts
fish_add_path ~/bin/
fish_add_path ~/.fly/bin


if status is-interactive
    abbr -a g git
    abbr -a c config
    abbr -a n nvim
    abbr -a gpu git push origin
    abbr -a gpl git pull origin
    abbr -a cpu config push origin
    abbr -a fce nvim ~/.config/fish/config.fish
end
