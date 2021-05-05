source ~/.lloyds_env


case "$OSTYPE" in
  darwin*)
    export PATH=$HOME/Library/Python/3.8/bin:$PATH
    export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-16.jdk/Contents/Home
    export PATH="/usr/local/sbin:$PATH"
    export ANDROID_HOME=~/Library/Android/sdk
    export PATH=$PATH:$ANDROID_HOME/tools
    export PATH=$PATH:$ANDROID_HOME/tools/bin
    export PATH=$PATH:$ANDROID_HOME/platform-tools
    export PATH=$PATH:$ANDROID_HOME/build-tools/30.0.3/
    export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages/
  ;;
  linux*)
  # export PATH=$HOME/bin:/usr/local/bin:$PATH
  # export JAVA_HOME=/usr/lib/jvm/java-11-jdk/
    # ...
  ;;
  dragonfly*|freebsd*|netbsd*|openbsd*)
    # ...
  ;;
esac
