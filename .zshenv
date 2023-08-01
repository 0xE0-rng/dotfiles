case "$OSTYPE" in
  darwin*)
    export ANDROID_HOME=~/Library/Android/sdk
    export ANDROID_SDK=$ANDROID_HOME
    export ANDROID_NDK_HOME="/usr/local/share/android-ndk"

    export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages/
    export PATH=$HOME/Library/Python/3.8/bin:$PATH
    export PATH=$HOME/Library/Python/3.9/bin:$PATH
    # . ~/.asdf/plugins/java/set-java-home.zsh

    # export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-16.jdk/Contents/Home
    export PATH="$PATH:/usr/local/sbin"

    export PATH=$PATH:$ANDROID_HOME/emulator
    export PATH=$PATH:$ANDROID_HOME/tools
    export PATH=$PATH:$ANDROID_HOME/tools/bin
    export PATH=$PATH:$ANDROID_HOME/platform-tools
    export PATH=$PATH:$ANDROID_HOME/build-tools/30.0.2/

    export PATH="$HOME/.asdf/shims":$PATH
    export PATH="/usr/local/opt/binutils/bin:$PATH"
    export PATH="$HOME/bin:$PATH"
    export PATH="/usr/local/opt/python@3.9/libexec/bin:$PATH"


    source ~/.zsh_lds

    source /usr/local/opt/chruby/share/chruby/chruby.sh
    source /usr/local/opt/chruby/share/chruby/auto.sh
    chruby ruby-3.1.3
    ;;
  linux*)
    # export PATH="$HOME/.rbenv/bin:$PATH"
    # eval "$(rbenv init - zsh)"
    export ANDROID_HOME=$HOME/android/sdk
    export PATH=$PATH:/opt/WebDriver/bin
    export PATH=$PATH:$HOME/.cargo/bin/
    export PATH=$PATH:$HOME/.local/bin
    # updates PATH for the Google Cloud SDK.
    if [ -f '/home/luis/google-cloud-sdk/path.zsh.inc' ]; then . '/home/luis/google-cloud-sdk/path.zsh.inc'; fi
    # export PATH=$HOME/bin:/usr/local/bin:$PATH
    # export JAVA_HOME=/usr/lib/jvm/java-11-jdk/
    # ...
    export NDK_HOME="${HOME}/android/android-ndk-r22b"
    # export TOOLCHAIN="${NDK_HOME}/toolchains/llvm/prebuilt/linux-x86_64"
    # export CC="${TOOLCHAIN}/bin/aarch64-linux-android29-clang"
    # export LD="${TOOLCHAIN}/bin/aarch64-linux-android-ld"

    export PATH=$PATH:$ANDROID_HOME/emulator
    export PATH=$PATH:$ANDROID_HOME/tools
    export PATH=$PATH:$ANDROID_HOME/tools/bin

    export PATH=$PATH:$ANDROID_HOME/platform-tools
    export PATH=$PATH:$HOME/go/bin/

    if [ -f '$HOME/.cargo/env' ]; then . "$HOME/.cargo/env"; fi

  ;;
  dragonfly*|freebsd*|netbsd*|openbsd*)
    # ...
  ;;
esac


