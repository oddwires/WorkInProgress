# WorkInProgress
So my alarm system has been running reliably for over 6 years. Looking after my house when I'm out, and waking me up in the mornings with a cup of tea.  

Then out of nowhere, the SD card fails :(  

No problem - I'll just create a new SD card from my Github repo.  
However all the dependancies have changed, and its just not that easy.

This repo is about getting the build working again, and transitioning it to the Raspberry Pi Homebridge image.

## Install on a Raspberry Pi

The alarm system is intended for use on a <a href="https://www.raspberrypi.org/products/raspberry-pi-3-model-b/" target="_blank">Raspberry Pi 3 model B</a> running the
<a href="https://github.com/homebridge/homebridge-raspbian-image/wiki/Getting-Started/" target="_blank">Homebridge Raspberry Pi image</a> (Debian Trixie)

At first boot, the Homebridge image will prompt to select the keyboard layout, and then to create a local user account. You will need to attach a keyboard and monitor for these steps. After that, you can continue the install either through the keyboard and monitor, or through an SSH (terminal) session.   

Logon using the local user account.   

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
<li>System options | set Hostname</li>
<li>Localisation Options | Configure lanuage and regional settings</li>
<li>Localisation Options | Change Timezone</li>
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
<blockquote style="font-weight: normal; background: #c0c0c0;">mkdir Downloads</blockquote>
</td>
<td>Downloads from the GitHub will be stored in this directory.</td>
</tr>
<tr>
<td>4</td>
<td>
<blockquote style="font-weight: normal; background: #c0c0c0;">cd Downloads</blockquote>
</td>
<td>Change into the Downloads directory.</td>
</tr>
<tr>
<td>5</td>
<td>
<blockquote style="font-weight: normal; background: #c0c0c0;">git clone https://github.com/oddwires/WorkInProgress.git</blockquote>
</td>
<td>Download the alarm web app
(copies all files from the Git Hub to the Download directory).</td>
</tr>
<tr>
<td>6</td>
<td>
<blockquote style="font-weight: normal; background: #c0c0c0;">sudo mv WorkInProgress alarm-system</blockquote>
</td>
<td>Rename the install directory.</td>
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
</tbody>
</table>

## Issues
   None - but I'm running it for a while because I'm sure there are some in there somehere. 

## Useful file locations:-

https:\/\/\<ip address>/            Alarm System console   
http:\/\/\<ip address>:8581/          Homebridge console   

  apache2                /var/log/apache2/access.log   
                        /var/log/apache2/error.log   
                        /etc/apache2/sites-available/000-default.conf   
  NGINX                 /var/log/nginx/error.log   
                                /etc/nginx/nginx.conf   
  postfix                 /var/log/postfix.log   
                                /etc/postfix/main.cf   
  SAMBA                 /var/log/samba/log.smbd  
                             /etc/samba/smb.conf   

sudo netstat -plnt   
sudo hb-config   

                        
                                  

