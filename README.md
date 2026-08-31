# Xubuntu programtelepítő szkript futtatása

git clone https://github.com/linuxosuser/xubuntu.git

sudo -i # Írja be a felhasználó jelszavát!

cd ~felhasználónév/xubuntu # A "felhasználónév" példát helyettesítse a valódi felhasználónévvel!

chmod +x xubuntu-programs-install.sh

./xubuntu-programs-install.sh



# Audio kernelparamétereinek beállítása a GRUB konfigurációs fájlban

sudo szövegszerkesztő_neve/etc/default/grub # A "szövegszerkesztő_neve" példát helyettesítse a szövegszerkesztő valódi nevével és szerkessze a GRUB_CMDLINE_LINUX_DEFAULT sort a következőképpen:

GRUB_CMDLINE_LINUX_DEFAULT="quiet splash snd_hda_intel.model=alc233-eapd snd_hda_intel.power_save=0 snd_hda_intel.power_save_controller=N"

A konfigurációs fájl mentése és kilépés a szövegszerkesztőből # Minden szövegszerkesztőnél más billentyűkombinációval kell menteni a konfigurációs fájlt és kilépni a szövegszerkesztőből.

sudo update-grub

sudo reboot

# Az audio sikeres beállításainak ellenőrzése

cat /sys/module/snd_hda_intel/parameters/power_save

cat /sys/module/snd_hda_intel/parameters/power_save_controller

cat /sys/module/snd_hda_intel/parameters/model
