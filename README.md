# setup
```
git clone --bare git@github.com:xerg0n/dotfiles.git .dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config config status.showUntrackedFiles no
config checkout
```



# Additionals
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm



sudo apt update && sudo apt upgrade && sudo apt install nodejs neovim nmap python3-pip
```
