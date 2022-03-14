alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ssh="TERM=xterm ssh"
alias fix='vim +/HEAD `git diff --name-only | uniq`'

if hash nvim 2>/dev/null; then
  alias vim=nvim
fi

