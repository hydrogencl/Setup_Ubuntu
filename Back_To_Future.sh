#!/usr/bash
sudo passwd

# installing necessary programs
sudo apt update -y
sudo apt upgrade -y
sudo apt install audacious vlc hime hime-anthy pcmanfm terminator vim geany vpnc -y

sudo apt install pcmanx-gtk2 gimp -y

# installing super flat icons
# sudo add-apt-repository ppa:daniruiz/flat-remix
# sudo apt-get update
# sudo apt-get install flat-remix

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
# UUID=xxx /media/my_label ntfs-3g defaults,auto,uid=1000,gid=1000,umask=002 0 0

# ssh-keygen -a 100 -t ed25519 -f ~/.ssh/id_ed25519

# Fixing the Keychron Function Keys:
#echo "options hid_apple fnmode=0" | sudo tee -a /etc/modprobe.d/hid_apple.conf
#sudo update-initramfs -u | mkinitcpio -P

