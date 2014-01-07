#!/bin/bash
#
# Created by DimiG
#
# year 2014
#
# This script is syncing two folders 1 -> 2 by rsync program
# rsync MUST be installed on your system and be accessible before you run this script
#
# This script is copyrighted under the GNU General Public License version 2
# http://www.gnu.org/copyleft/gpl.html

# Variables setup

# Function Setup
function finished { tput setaf 3; echo -e "\rDONE! ;-)"; tput sgr0; exit 0; }
function die { tput setaf 1; echo "ERROR: $*" >&2; tput sgr0; exit 1; }
function presskey { tput setaf 3;read -p "Press [Enter] key to start the DRY-RUN or \`f\` for syncing if U're ready..." key;tput sgr0; }
function dryrun { tput setaf 6; echo -e "\rDRY-RUNning..."; tput sgr0; }

# Checkout arguments if incorrect show ERROR message
if [ -z "$1" ] || [ -z "$2" ];
then
    die "Usage: mbak.sh FolderNameSource FolderNameDestination"
fi

# Check if user wanna continue ;)

presskey

# Main command
if [ "$key" != "f" ];
then
   # Nothing To Do...
   dryrun

   nice rsync -avuhn --progress "$1" "$2"

else
   nice rsync -avuh --progress "$1" "$2"

fi

# Just a greetings :)
finished

exit $RETVAL

