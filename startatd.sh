#!/bin/sh

# Created by DimiG
#
# year 2015

# This script is starting the atd daemon on Synology Box load as example
# The atd installed by Synology bootstrap (ipkg)
# The script MUST be located in /usr/local/etc/rc.d/
# It must contain the "sh" suffix
# The permission must be 755
# It must contain the options “start” and “stop”
# When the system boots up, it will call “startatd.sh start”
# When it shuts down, it will call “startatd.sh stop”

#
# This script is copyrighted under the GNU General Public License version 2
# http://www.gnu.org/copyleft/gpl.html

if test -z "${ATD_PATH}"; then

# This is a PATH to atd daemon
ATD_PATH=/volume1/@optware/sbin/atd

fi

case "$1" in
    start)
      echo "Starting at daemon…"
      ${ATD_PATH}
    ;;
    stop)
      echo "Shutting down atd daemon…"
    true
    ;;
    *)
      echo "Usage: $0 {start|stop}"
      exit 1
esac
exit 0
