#!/bin/bash


pacman -Syy && pacman -S reflector && reflector --country Netherlands --country Germany --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist &&
echo pacman is correct nu partities && cfdisk  &&


mkfs.ext4 /dev/sda1 && mkfs.fat -F16  /dev/sda2 && echo PARTION KLAAR. &&
mount /dev/sda1 /mnt && pacstrap /mnt base linux linux-firmware vim nano &&
genfstab -U /mnt >> /mnt/etc/fstab && arch-chroot /mnt && timedatectl set-timezone Europe/Amsterdam && echo LANG=en_GB.UTF-8 > /etc/locale.conf && export LANG=en_GB.UTF-8 && echo barch > /etc/hostname &&
passwd root && pacman -S grub efibootmgr && mkdir /boot/efi %% mount /dev/sda1 /boot/efi &&
grub-install --target=x86_64-efi --bootloader-id=GRUB --efi-directory=/boot/efi &&
grub-mkconfig -o /boot/grub/grub.cfg && echo barch is done
