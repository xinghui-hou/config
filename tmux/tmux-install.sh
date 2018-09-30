#!/bin/bash
yum -y install ncurses-devel gcc gcc-c++ make

wget https://github.com/downloads/libevent/libevent/libevent-2.0.20-stable.tar.gz
tar xvzf libevent-2.0.20-stable.tar.gz
cd libevent-2.0.20-stable
./configure --prefix=/usr/local/libevent
make && make install

ln -s /usr/local/libevent/lib/libevent-2.0.so.5 /usr/lib64/libevent-2.0.so.5

wget https://github.com/tmux/tmux/releases/download/2.6/tmux-2.6.tar.gz
tar zxvf tmux-2.6.tar.gz
cd tmux-2.6
