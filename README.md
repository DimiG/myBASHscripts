myBASHscripts
================
This repository dedicated to myOWN BASH scripts I use for tests or daily purposes.

These scripts used on Mac or Linux platforms.
Repository contain BASH scripts which you're able to clone and run on your systems.
Don't forget to follow the comments and make scripts executable by: chmod +x ScriptName

Scripts description
-------------------

### myBASHscripts folder

* `bin` Folder:<br>
   This folder contain binary variants of scripts presented in other folders.

* `MacOS` Folder:<br>
   This folder contain scripts specific for [Mac OS][macos].

* `Linux` Folder:<br>
   This folder contain scripts specific for [Linux][linux].

* `Synology` Folder:<br>
   This folder contain scripts specific for [Synology Box][synology].

* `All Applications`:<br>
   **Note :** This code is not well optimized. If any tips, write me about.<br>
   ***Requires :*** [BASH][bash] MUST be exist on your platform and running. Mac OS and Linux has it from the BOX.<br>
   ***Important:*** Please follow the comments for every script to get it working.
   
* `To be continued...`

### MacOS Folder

* `helloMyMAC.sh`: This script DO NOTHING. Just Hello World in MAC OS.<br>
   The reason of this script is testing...

* `video2prores.sh`: This script is a batch converter for video files. Usable for editing systems ingest.<br>
   Commands help by: `$ video2prores.sh -h`

### Linux Folder

* `mbak.sh`: This script is syncing two folders by [rsync][rsync] program. `rsync` MUST be installed and accessible before you attempt to run this script.<br>
   The reason of this script is to escape annoying `rsync` parameters input ;)

### Synology Folder

* `sqlBackUp.sh`: This script is used to backup MySQL/MariaDB database (DUMP it). Wrote for ash shell which is used by Synology NAS.<br>
   **Note :** This script is not a BASH script. Tested by [ASH][ash] shell only.<br>
   ***Requires :*** Synology NAS with [ASH][ash] inside.

* `startatd.sh`: This script is starting the atd daemon on Synology Box. Wrote for ash shell which is used by Synology NAS.<br>
   **Note :** This script is not a BASH script. Tested by [ASH][ash] shell only. The atd installed by Synology bootstrap (ipkg).
   The script MUST be located in /usr/local/etc/rc.d/ It must contain the "sh" suffix. The permission must be 755.
   It must contain the options “start” and “stop”. When the system boots up, it will call “startatd.sh start”.
   When Synology shuts down, it will call “startatd.sh stop”.

### License

These code may be COPYRIGHT PROTECTED by ©2017 DimiG

[rsync]:http://rsync.samba.org
[bash]:http://www.gnu.org/software/bash
[ash]:http://en.wikipedia.org/wiki/Almquist_shell
[macos]:https://en.wikipedia.org/wiki/MacOS
[linux]:https://en.wikipedia.org/wiki/Linux
[synology]:https://en.wikipedia.org/wiki/Synology_Inc.
