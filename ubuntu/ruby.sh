#!/bin/sh

ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_RED=$ESC_SEQ"31;01m"
COL_GREEN=$ESC_SEQ"32;01m"
COL_YELLOW=$ESC_SEQ"33;01m"
COL_BLUE=$ESC_SEQ"34;01m"
COL_MAGENTA=$ESC_SEQ"35;01m"
COL_CYAN=$ESC_SEQ"36;01m"

echo -e "$COL_GREEN Installing $COL_RED Ruby stuff $COL_RESET"
sudo apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion pkg-config libpq-dev libsqlite3-dev libmagickwand-dev

echo "Installing chruby"
wget -O chruby-0.3.5.tar.gz https://github.com/postmodern/chruby/archive/v0.3.5.tar.gz
tar -xzvf chruby-0.3.5.tar.gz
cd chruby-0.3.5/
sudo make install
