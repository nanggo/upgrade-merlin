# upgrade-merlin
Auto upgrade script for ASUS merlin firmware

## HOW TO
- Open upgrade.sh with editor
- Set YOUR ASUS router ID, ADDRESS, PORT
- Download appropriate merlin-firmware to your router
- Decompress firmware where script located
- Run ```./upgrade.sh```
- Type your router's ssh password
- Script will copy *.trx to remote router and upgrade firmware automatically
- After upgarde, router will reboot

## NEXT
- [ ] apply sshpass
- [ ] add validations
