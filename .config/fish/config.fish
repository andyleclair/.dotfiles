source ~/.asdf/asdf.fish

set -g EDITOR nvim

abbr -a g git
abbr -a c config
abbr -a n nvim

fish_add_path ~/.local/bin

set AWS_REGION us-west-2

if status is-interactive
    # Commands to run in interactive sessions can go here
end
