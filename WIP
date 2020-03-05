<!DOCTYPE html>
<html>
<head>
<style>
out {
  border: 2px solid gray;
  margin: 10px 0px ;
  padding: 3px;
  background-color: #ebf1f5;
  font-family: monospace;
  font-size: 15px;
}

h3 {
	margin: 10px 0px;
	
}

h4 {
	font-family: sans-serif;
	font-weight: 1;
	font-size: 13px;

}
</style>
</head>
<body>

<h1>Installing Arch Linux</h1>

<h1>Eerst de disk aanmaken gebruik hiervoor cfdisk</h1>
<h3>de eerste disk 1G /dev/sda1 is voor EFI</h3>
<h3>De 2e Disk is voor je OS zelf</h3>
<h3>Disk 3 is voor swap hier wordt vaak het dubbele van je ram gebruikt</h3>
<br>
<h4>Onderstaand commando zorgt er voor dat de mirror naar nederlands/duitsland komt te staan waardoor je snelheiden verbetern</h4>
<out>pacman --noconfirm -Sy && pacman -S --noconfirm reflector && reflector --country Netherlands --country Germany --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist</out>
<h4>Nu de disk goed zetten zodat we weten waar alles wordt geinstalleerd<br>De commands spreken wel wat voor zich zelf mk(make) fs(filesystem) swap ext4 fat<br>swapon vertelt dat die partitie swap betekend</h4>
<out>mkfs.fat -F32 /dev/sda1 && mkfs.ext4 /dev/sda2 && mkswap /dev/sda3 && swapon /dev/sda3</out>
<h4>Hier maken folders aan op de partities om naar toe te installeren</h4>
<out>mount /dev/sda2 /mnt %% mkdir /mnt/boot && mount /dev/sda1 /mnt/boot</out>
<h4>Installeren van de systeem basis</h4>
<out>pacstrap /mnt base linux linux-firmware vim nano</out>
<h4></h4>
<out>genfstab -U /mnt > /mnt/etc/fstab</out>
<h4>Alles wat je in arch-chroot doet is permanent op het systeem</h4>
<out>arch-chroot /mnt</out>
<h4>Dit zet de tijd naar Amsterdam</h4>
<out>timedatectl set-timezone Europe/Amsterdam</out>
<h4>Dit is voor het toetsenboard zonder dit zal de GUI terminal en vele ander dingen niet werken</h4>
<out>echo en_GB.UTF-8 UTF-8 > /etc/locale.gen</out>
<h4></h4>
<out>locale-gen</out>
<h4>Dit zet de taal naar het engels als je deze in het nederlands wil kan ook maar dat is echt vreselijk</h4>
<out>echo LANG=en_US.UTF-8 > /etc/locale.conf</out>
<h4>Veranderd de content van je hostname file/hostnamezelf naar Barch</h4>
<out>echo Barch > /etc/hostname</out>
<h4>Hier moet je 2 keer een wachtwoord invullen</h4>
<out>passwd root</out>
<h4>Het installeren van GRUB hiermee kan je naar de os booten</h4>
<out>pacman -S grub efibootmgr</out>
<h4></h4>
<out>grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB</out>
<h4></h4>
<out>grub-mkconfig -o /boot/grub/grub.cfg</out>
<h4>Nu gaan we de KDE desktop omgeving installeren met xOrg als engine</h4>
<out>pacman -S --noconfirm xorg xorg-server</out>
<h4></h4>
<out>echo "exec startkde" > ~/.xinitrc</out>
<h4></h4>
<out>pacman -S --noconfirm plasma-desktop kde-applications-meta breeze-gtk breeze kde-gtk-config</out>
<h4></h4>
<out>pacman -S --noconfirm sddm</out>
<h4></h4>
<out>systemctl enable sddm.service && systemctl enable sddm</out>
<h4>dit zet het theme van de machine naar breeze sinds de ander het inlogscherm niet goed laat zien</h4>
<out>sed -i ‘s/Current=/Current=breeze/’ /usr/lib/sddm/sddm.conf.d/default.conf</out>
<h4></h4>
<out>pacman -S --noconfirm networkmanager plasma-nm && systemctl enable NetworkManager.service</out>
<h4>Dit installeerd nog wat standaard tools zoals firefox</h4>
<out>pacman -S --noconfirm konsole dolphin firefox kate</out>

</body>
</html>


<br>
<h4></h4>
