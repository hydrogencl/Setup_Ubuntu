#!/usr/bin/sh
sudo passwd

# installing necessary programs
sudo apt update -y
sudo apt upgrade -y
sudo apt install audacious vlc terminator vim geany vpnc git -y

git config core.editor "vim"

sudo apt install pcmanx-gtk2 gimp -y

# installing super flat icons
# sudo add-apt-repository ppa:daniruiz/flat-remix
# sudo apt-get update
# sudo apt-get install flat-remix

# Installing fcitx 5

sudo apt install pkg-config fcitx5 libfcitx5core-dev libfcitx5config-dev libfcitx5utils-dev fcitx5-modules-dev     cmake extra-cmake-modules gettext libfmt-dev libicu-dev libjson-c-dev

git clone https://github.com/openvanilla/fcitx5-mcbopomofo.git
cd fcitx5-mcbopomofo/
mkdir -p build
cd build/
cmake ../ -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release
make 
sudo make install

# configuring imput method
sudo im-config

# install libreoffice 
sudo apt install libreoffice-texmaths jabref libreoffice-style-sifr pdfshuffler -y

# install python stuff
sudo apt install python3-pip -y
pip3 install ipython matplotlib numpy scipy jupyter networkx jupyterlab scikit-learn mpi4py

# install for art
sudo apt install gimp mypaint mypaint-brushes pikopixel.app inkscape inkscape-open-symbols -y

# install for graphic-relate
sudo apt install inkscape inkscape-open-symbols -y

# installation of Office Relate
sudo apt install okular -y
sudo apt install evolution evolution-ews -y

sudo apt install texlive gummi texlive-publishers texlive-lang-german texlive-science texlive-fonts-extra -y

# The example of mounting the ntfs by FSTAB
# UUID=7557C71A72DE481F /Data           ntfs    defaults,umask=000,uid=1000,gid=1000,dmask=027,fmask=137 0 0
# UUID=7557C71A72DE481F /Data           ntfs-3g    defaults,rw,permissions,umask=0022,uid=1000,gid=500,dmask=027,fmask=137 0 0
# UUID=4B55B50364DA6FC6 /Data ntfs-3g defaults,user,exec,uid=1000,gid=1000,dmask=0777,fmask=0111,umask=0022 0 0
# ssh-keygen -a 100 -t ed25519 -f ~/.ssh/id_ed25519

# Fixing the Keychron Function Keys:
#echo "options hid_apple fnmode=0" | sudo tee -a /etc/modprobe.d/hid_apple.conf
#sudo update-initramfs -u | mkinitcpio -P

