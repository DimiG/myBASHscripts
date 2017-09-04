myBASHscripts
================
This repository dedicated to myOWN BASH scripts I use for tests or daily purposes.

These scripts used on Mac or Linux platforms.
Repository contain BASH scripts which you're able to clone and run on your systems.
Don't forget to follow the comments and make scripts executable by: chmod +x ScriptName

Scripts description
-------------------

### myBASHscripts folder

* `mbak.sh`: This script is syncing two folders by [rsync][rsync] program. `rsync` MUST be installed and accessible before you attempt to run this script.<br>
   The reason of this script is to escape annoying `rsync` parameters input ;)

* `sqlBackUp.sh`: This script is used to backup MySQL/MariaDB database (DUMP it). Wrote for ash shell which is used by Synology NAS.<br>
   **Note :** This script is not a BASH script. Tested by [ASH][ash] shell only.<br>
   ***Requires :*** Synology NAS with [ASH][ash] inside.

* `startatd.sh`: This script is starting the atd daemon on Synology Box. Wrote for ash shell which is used by Synology NAS.<br>
   **Note :** This script is not a BASH script. Tested by [ASH][ash] shell only. The atd installed by Synology bootstrap (ipkg). 
   The script MUST be located in /usr/local/etc/rc.d/ It must contain the "sh" suffix. The permission must be 755. 
   It must contain the options “start” and “stop”. When the system boots up, it will call “startatd.sh start”. 
   When Synology shuts down, it will call “startatd.sh stop”.

* `helloMyMAC.sh`: This script DO NOTHING. Just Hello World in MAC OS.<br>
   The reason of this script is testing...

* `All Applications`:<br>
   **Note :** This code is not well optimized. If any tips, write me about.<br>
   ***Requires :*** [BASH][bash] MUST be exist on your platform and running. Mac OS and Linux has it from the BOX.<br>
   ***Important:*** Please follow the comments for every script to get it working.
   
* `To be continued...`

Your Questions - my Answers
---------------------------

### Why is it public?

Exist some reasons for it:

* I don't like to make one job many times and want to save it in the cloud.

* If someone have same needs he can contribute and improve this code.

* I want to use the `Git` for personal study and project collaboration

### When do you finish?

Just fill it one by one.

### Is it safe to use?

These code is not fully tested, and may not work correctly. Just inform me if you want.

### Who Are You?

My name is [Dmitri][dimig] and I'm a splendid chap.

### Where can I find more info?

Additional tips and tricks are on [myOWN blog][homepage].

Contributing
------------

Fork the [DimiG repository on GitHub](https://github.com/dimig) and
send a Pull Request.

[homepage]:http://dimig.blogspot.com
[dimig]:http://dimig.blogspot.com
[rsync]:http://rsync.samba.org
[bash]:http://www.gnu.org/software/bash
[ash]:http://en.wikipedia.org/wiki/Almquist_shell
