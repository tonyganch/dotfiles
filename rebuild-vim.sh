#!/bin/sh
FEATURES=
FEATURES="$FEATURES --without-x"
FEATURES="$FEATURES --disable-gui"
FEATURES="$FEATURES --enable-fail-if-missing"
FEATURES="$FEATURES --enable-rubyinterp=dynamic"
FEATURES="$FEATURES --enable-pythoninterp=dynamic"
FEATURES="$FEATURES --enable-cscope"
FEATURES="$FEATURES --disable-xim"
FEATURES="$FEATURES --with-features=huge"
FEATURES="$FEATURES --with-compiledby=Tony Ganch <tonyganch@gmail.com>"

test -d ~/vim || {
    echo "To get vim sources do" 1>&2
    echo "  git clone git@github.com:b4winckler/vim.git ~/vim" 1>&2
    exit 1
}
cd ~/vim
rm -f src/auto/config.cache
./configure $FEATURES
sudo make install
