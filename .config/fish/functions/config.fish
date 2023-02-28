function config --description 'Manage my local dotfiles config'
  git --git-dir=$HOME/.dotfiles/.git/ --work-tree=$HOME $argv
end

