# Dotfiles
My Linux dofile configureations, based on https://medium.com/@augusteo/simplest-way-to-sync-dotfiles-and-config-using-git-14051af8703a


## Initial setup
```
git init --bare $HOME/.cfg 
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME' config config --local status.showUntrackedFiles no 
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc

config remote add origin https://github.com/xerg0n/dotfiles.git
config push -u origin master
```

## New Machine
creating the config alias

`echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc`

clone

`git clone --bare https://github.com/xerg0n/dotfiles.git $HOME/.cfg`
