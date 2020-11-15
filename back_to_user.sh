#!/usr/bash
sudo passwd

# installing necessary programs
sudo apt update
sudo apt upgrade

# install basic system tools
sudo apt install pcmanfm terminator vim vpnc

# Music & Videos
sudo apt install audacious vlc 

# BBS/Term connection
sudo apt install pcmanx-gtk2

# installing super flat icons
# sudo add-apt-repository ppa:daniruiz/flat-remix
# sudo apt-get update
# sudo apt-get install flat-remix

# configuring imput method
sudo apt install hime hime-anthy 
sudo im-config

# install coding related:
sudo apt install geany  git 

# install libreoffice 
sudo apt install libreoffice-texmaths jabref libreoffice-style-sifr pdfshuffler

# install python stuff
sudo apt install python3-pip 
pip3 install ipython matplotlib numpy scipy jupyter networkx jupyterlab scikit-learn mpi4py

# install for art
sudo apt install gimp mypaint mypaint-brushes pikopixel.app inkscape inkscape-open-symbols

# install for graphic-relate
sudo apt install inkscape inkscape-open-symbols 

# installation of Office Relate
sudo apt install okular
sudo apt install evolution evolution-ews

sudo apt install texlive gummi texlive-publishers texlive-lang-german 
