# WorkInProgress
So my alarm system has been running reliably for over 6 years. Looking after my house when I'm out, and waking me up in the mornings with a cup of tea.  
Then out of nowhere, the SD card fails :(  
  
No problem - I'll just create a new SD card from my Github repo.  
However all the dependancies have changed, and its just not that easy.

This repo is about getting the build working again.

Key differences...

1) Based on [Homebridge Raspberry Pi Image](https://homebridge.io/raspberry-pi-image) (Debian Trixie)
2) Moved all log file into /var/log/ and updated Samba data share to point to it.
3) It's starting to look like it just ain't going to work on a Raspberry Pi 2 model B any more.

## Install on a Raspberry Pi

The alarm system is intended for use on a <a href="https://www.raspberrypi.org/products/raspberry-pi-2-model-b/" target="_blank">Raspberry Pi 2 model B</a> or a <a href="https://www.raspberrypi.org/products/raspberry-pi-3-model-b/" target="_blank">Raspberry Pi 3 model B</a> running Raspberry Pi OS Lite. The Raspbian image (dated December 2nd 2020) can be downloaded from the [Raspberry Pi Downloads] (https://www.raspberrypi.org/downloads/raspbian/) web site.<br>

At first boot, the Raspbian image has SSH disabled, so you will need to attach a keyboard and monitor to run stage 1 of the install in the table below. After that, you can continue the install either through the console, or through an SSH (terminal) session.<br>

Logon using the pi account – you should be in the /home/pi directory by default<br>
 
<table style="width: 100%;" border="2">
<tbody>
<tr>
<th style="width: 3%;">Stage</th>
<th style="width: 15%;">Linux command</th>
<th>Notes</th>
</tr>
<tr>
<td>1</td>
<td>
<blockquote style="font-weight: normal; background: #c0c0c0;">sudo raspi-config</blockquote>
</td>
<td>This starts the Raspberry Pi configuration utility. Select the following...<ul>
<li>Localisation Options | Change Timezone</li>
<li>Localisation Options | Change Locale ( default is en_GB, you may need to change it )</li>
<li>Intefacing options | SSH enable</li>
<li>System options | Hostname</li>
<li>Finish and Reboot</li></ul></td></tr>
<tr>
<td>2</td>
<td>
<blockquote style="font-weight: normal; background: #c0c0c0;">sudo apt-get update</blockquote>
</td>
<td>Download package lists for software repositories and update them with the newest versions of packages and dependencies.</td>
</tr>
<tr>
<td>3</td>
<td>
<blockquote style="font-weight: normal; background: #c0c0c0;">sudo apt-get -y install git</blockquote>
</td>
<td>Install the Git agent to allow downloads from the Git Hub.</td>
</tr>
<tr>
<td>4</td>
<td>
<blockquote style="font-weight: normal; background: #c0c0c0;">mkdir Downloads</blockquote>
</td>
<td>Downloads from the GitHub will be stored in this directory.</td>
</tr>
<tr>
<td>5</td>
<td>
<blockquote style="font-weight: normal; background: #c0c0c0;">cd Downloads</blockquote>
</td>
<td>Change into the Downloads directory.</td>
</tr>
<tr>
<td>6</td>
<td>
<blockquote style="font-weight: normal; background: #c0c0c0;">git clone https://github.com/oddwires/alarm-system.git</blockquote>
</td>
<td>Download the alarm web app
(copies all files from the Git Hub to the Download directory).</td>
</tr>
<tr>
<td>7</td>
<td>
<blockquote style="font-weight: normal; background: #c0c0c0;">cd alarm-system</blockquote>
</td>
<td>Move into the install directory.</td>
</tr>
<tr>
<td>8</td>
<td>
<blockquote style="font-weight: normal; background: #c0c0c0;">chmod +x install.sh</blockquote>
</td>
<td>Make install script executable.</td>
</tr>
<tr>
<td>9</td>
<td>
<blockquote style="font-weight: normal; background: #c0c0c0;">sudo ./install.sh</blockquote>
</td>
<td>Run the install script.</td>
</tr>
<tr>