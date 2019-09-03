# upgrade-merlin
Auto upgrade script for ASUS router with merlin firmware

## HOW TO
- Open upgrade.sh with editor
- Set YOUR ASUS router ID, ADDRESS, PORT
- Download appropriate merlin-firmware to your router
- Decompress firmware where script located
- Run ```./upgrade.sh```
- Type your router's ssh password
- Script will copy \*.trx to remote router and upgrade firmware *automatically*
- After upgarde, router will reboot

## NEXT
- [ ] decompress firmware
- [ ] apply sshpass
- [ ] add validations
- [ ] after upgrade success, clean firmware files
