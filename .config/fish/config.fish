set -gx EDITOR nvim
set -gx AWS_REGION us-west-2
set -gx ERL_AFLAGS "-kernel shell_history enabled -kernel shell_history_file_bytes 102400"
set -gx KERL_BUILD_DOCS yes
set -gx LD_LIBRARY_PATH /usr/local/lib

fish_add_path ~/.local/bin
fish_add_path ~/src/ripgrep/target/release
fish_add_path ~/personal/dotfiles/scripts
fish_add_path ~/bin/
fish_add_path ~/.fly/bin

if status is-interactive
    mise activate fish | source
    abbr -a g git
    abbr -a c config
    abbr -a n nvim
    abbr -a gpu git push origin
    abbr -a gpl git pull origin
    abbr -a cpu config push origin
    abbr -a fce nvim ~/.config/fish/config.fish
    abbr -a mho mix hex.outdated
    abbr -a mdua mix deps.update --all
    abbr -a mdg mix deps.get
    abbr -a zb zli connect deploy@i-0412714a1148a7ee4 # zli to build shell
    abbr -a dcu docker compose up -d
    abbr -a dcd docker compose stop
    abbr -a dcs docker compose start
    abbr -a breath zenta now --quick
    abbr -a breathe zenta now
    abbr -a reflect zenta reflect
else
    mise activate fish --shims | source
end


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/borpht/.opam/opam-init/init.fish' && source '/home/borpht/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true
# END opam configuration

# opencode
fish_add_path /home/borpht/.opencode/bin
