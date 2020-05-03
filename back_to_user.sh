#!/usr/bash
sudo passwd

# installing necessary programs
sudo apt update
sudo apt upgrade
sudo apt install audacious vlc hime hime-anthy pcmanfm terminator vim geany

sudo apt install pcmanx-gtk2 gimp

# installing super flat icons
sudo add-apt-repository ppa:daniruiz/flat-remix
sudo apt-get update
sudo apt-get install flat-remix

# configuring imput method
sudo im-config

# install libreoffice 
sudo apt install libreoffice-texmaths jabref libreoffice-style-sifr 

# installing latex
sudo apt install gummi texlive-lang-english texlive-lang-german texlive-lang-cjk texlive-bibtex-extra texlive-science 

# install python stuff
sudo apt install python3-pip 
pip3 install ipython matplotlib numpy scipy ipython jupyter

