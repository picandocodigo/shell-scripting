#Config sudo:
adduser `whoami` sudo

#basic packages
sudo apt-get install -y clementine vlc gimp pidgin emacs24 pidgin-otr guake git synergy filezilla
sudo apt-get purge evolution empathy rhythmbox
sudo apt-get autoremove

# WiFi
sudo apt-get install firmware-iwlwifi
modprobe -r iwlwifi ; modprobe iwlwifi

#nvidia:
sudo apt-get install bumblebee-nvidia primus nvidia-kernel-dkms nvidia-glx nvidia-xconfig nvidia-settings nvidia-vdpau-driver vdpau-va-driver

# Dropbox
wget https://www.dropbox.com/download?dl=packages/debian/dropbox_1.6.0_amd64.deb -O dropbox.deb
sudo dpkg -i dropbox.deb

# Ruby
sudo apt-get install libxslt-dev libxml2-dev libpq-dev libmagickwand-dev libicu-dev

# PostgreSQL:
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgresql-9.3 pgadmin3

# Heroku Toolbelt
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku version
heroku login

# Multimedia:
sudo apt-get install libav-tools libavcodec-extra-53 libavdevice-extra-53 libavfilter-extra-2 libavformat-extra-53 libavutil-extra-51 libpostproc-extra-52 libswscale-extra-2 flashplugin-nonfree icedtea-plugin
# VLC  - Open from network:
# http://turriebuntu.wordpress.com/2012/04/21/lmde-vlc-unable-to-open-media-on-samba-share/
sudo apt-get install gvfs-fuse
sudo usermod -G fuse `whoami`

# GNOME 3:
sudo apt-get install software-properties-common

# Extensions:
# Workspace Grid
# https://extensions.gnome.org/extension/484/workspace-grid/
# TaskBar
# https://extensions.gnome.org/extension/584/taskbar/
# Media Player Indicator
# https://extensions.gnome.org/extension/55/media-player-indicator/
# Shows legacy tray icons on top
# https://extensions.gnome.org/extension/495/topicons/
# gconftool-2 --set /apps/metacity/general/mouse_button_modifier --type string "<Alt>"
# AppIndicatior - much better notification system than previous
# https://extensions.gnome.org/extension/615/appindicator-support/

sudo add-apt-repository ppa:webupd8team/gnome3
sudo apt-get update
sudo apt-get install gnome-shell-extensions-mediaplayer

#LAMP:
# sudo apt-get install mysql-server mysql-client apache2 apache2-doc php5 php5-mysql libapache2-mod-php5 phpmyadmin

#Hipchat
sudo su
echo "deb http://downloads.hipchat.com/linux/apt stable main" > \
  /etc/apt/sources.list.d/atlassian-hipchat.list
wget -O - https://www.hipchat.com/keys/hipchat-linux.key | apt-key add -
apt-get update
apt-get install hipchat 
