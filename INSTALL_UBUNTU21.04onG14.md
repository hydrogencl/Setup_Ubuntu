### Pre-requirement

 1. A ASUS ROG G14
 2. USB stick + Ubuntu Mate

 Optional:
 INTEL AX200 WIFI+ BLUETOOTH (MEDIATEK chip got problem)

### Pre-procedure
 1. Turn off the Windows encrypt disk function
 2. Turn off the Secure Boot

### Install Procedure
 1. Get the live DVD ready (only by Startup Disk Creator/apt install usb-creator-gtk) 
 2. Install from live DVD
 3. Install Daily
  832  apt install libclang-dev libudev-dev
  833  sudo apt install libclang-dev libudev-dev
  834  make
  835  sudo apt install rust-all 
  836  make 
  837  make install
  838  sudo make install
  839  asusctl
  840  sudo make
  841  nvidia-smi
  842  sudo apt install nvidia-utils-470-server
  843  nvidia-smi
  844  asusctl profile -A
  845  sudo apt install nvidia-dkms-470




