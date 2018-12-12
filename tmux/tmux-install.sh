#!/bin/bash
DIR="/usr/local/libevent";
yum -y install ncurses-devel gcc gcc-c++ make wget

[ -f libevent-2.0.20-stable.tar.gz ] || wget https://github.com/downloads/libevent/libevent/libevent-2.0.20-stable.tar.gz
tar vzf libevent-2.0.20-stable.tar.gz
cd libevent-2.0.20-stable
./configure --prefix=$DIR
make && make install

ln -s /usr/local/libevent/lib/libevent-2.0.so.5 /usr/lib64/

[ -f tmux-2.6.tar.gz  ] || wget https://github.com/tmux/tmux/releases/download/2.6/tmux-2.6.tar.gz
[ -f tmux-2.6.tar.gz  ] && tar zvf tmux-2.6.tar.gz
cd tmux-2.6
echo /configure --prefix=/usr/local/tmux CFLAGS="-I$DIR/include" LDFLAGS="-L$DIR/lib"
./configure --prefix=/usr/local/tmux CFLAGS="-I$DIR/include" LDFLAGS="-L$DIR/lib"
make && make install
cd ..
cp /usr/local/tmux/bin/tmux /usr/local/bin/
cp tmux.conf ~/.tmux.conf

