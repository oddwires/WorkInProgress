# WorkInProgress
So my alarm system has been running reliably for over 6 years. Looking after my house when I'm out, and waking me up in the mornings with a cup of tea.  
Then out of nowhere, the SD card fails :(  
  
No problem - I'll just create a new SD card from my Github repo.  
However all the dependancies have changed, and its just not that easy.

This repo is about getting the build working again.

Key differences...

1) Based on [Homebridge Raspberry Pi Image](https://homebridge.io/raspberry-pi-image) (Debian Trixie)
2) Moved all log file into /var/log/ and updated Samba data share to point to it.
