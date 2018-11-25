https://github.com/Microsoft/language-server-protocol


# Dotfiles
My Linux dofile configureations, based on [link](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)
## Initial setup
```
git init --bare $HOME/.cfg 
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME' 
config config --local status.showUntrackedFiles no 
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc
```

## New Machine
creating the config alias

```
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc
git clone --bare https://github.com/xerg0n/dotfiles.git $HOME/.cfg
config checkout
```
problems while checkout
```
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
```
or
`curl -Lks http://bit.do/cfg-install | /bin/bash`
