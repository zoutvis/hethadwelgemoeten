# hethadwelgemoeten
A install script voor arch called barch

om dit te installeren een paar kleine dingen toevoegen.
1. maak zelf even partitie aan met cfdisk in de volgorde efi root home
2. voer mkfs.fat /dev/sda1 in ivm ja dit werkt niet in een script blijkt.
3. chmod 777 barch script
4. als eerste script klaar is en je zit in chroot is het tweede deel van het script op de partie gekopieerd.
5. chmod 777 barc2-install
./run
klaar 
