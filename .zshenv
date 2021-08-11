case "$OSTYPE" in
  darwin*)
    if [ -f '~/.lloyds_env' ]; then source "~/.lloyds_env"; fi
    export PATH=$HOME/Library/Python/3.8/bin:$PATH
    . ~/.asdf/plugins/java/set-java-home.zsh
    export PATH="$HOME/.asdf/shims":$PATH
    # export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-16.jdk/Contents/Home
    export PATH="/usr/local/sbin:$PATH"
    export ANDROID_HOME=~/Library/Android/sdk
    export PATH=$PATH:$ANDROID_HOME/tools
    export PATH=$PATH:$ANDROID_HOME/tools/bin
    export PATH=$PATH:$ANDROID_HOME/platform-tools
    export PATH=$PATH:$ANDROID_HOME/build-tools/30.0.3/
    export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages/
  ;;
  linux*)
    # export PATH="$HOME/.rbenv/bin:$PATH"
    # eval "$(rbenv init - zsh)"
    export PATH=$PATH:/opt/WebDriver/bin
    PATH=$PATH:/home/kali/.local/bin
    # updates PATH for the Google Cloud SDK.
    if [ -f '/home/luis/google-cloud-sdk/path.zsh.inc' ]; then . '/home/luis/google-cloud-sdk/path.zsh.inc'; fi
    # export PATH=$HOME/bin:/usr/local/bin:$PATH
    # export JAVA_HOME=/usr/lib/jvm/java-11-jdk/
    # ...
  ;;
  dragonfly*|freebsd*|netbsd*|openbsd*)
    # ...
  ;;
esac
