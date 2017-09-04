#!/bin/sh

#
# Copyright (c) 2014 Dmitri G. All rights reserved.
#

# This script is used to backup MySQL/MariaDB database (DUMP)
# Wrote for ash shell which is used by Synology NAS

# Variables SetUP (Change the path for mysqldump below)
# Change the volume backup folder in example below!!!
theDate=$(date +%y%m%d.%H%M)
theDumpPrgPath="PATH to binary mysqldump is HERE!!!"
theOutPath="/volume1/BackUP/databaseBAK_${theDate}.sql"
theLogTmpFile="/volume1/BackUP/log.tmp"
theLogFile="/volume1/BackUP/MySQLbackUp.log"
theDefaultCharSet="--default-character-set=utf8"
theLogParam="--log-error=${theLogFile}"

# The code is HERE
echo >>${theLogFile}

echo "====================================================" >>${theLogFile}

echo "MySQL/MariaDB BackUP start on $(date)" >>${theLogFile} 

# Command execution
${theDumpPrgPath} -u username --databases databasename ${theDefaultCharSet} ${theLogParam} -r ${theOutPath}

echo "MySQL/MariaDB BackUP completed... Job Done!!!" >>${theLogFile} 

# Truncate the Log file
tail -n 60 ${theLogFile} >${theLogTmpFile}

mv -f ${theLogTmpFile} ${theLogFile}

exit
