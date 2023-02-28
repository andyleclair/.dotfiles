source ~/.asdf/asdf.fish

set -g EDITOR nvim

abbr -a g git
abbr -a c config

if status is-interactive
    # Commands to run in interactive sessions can go here
end
