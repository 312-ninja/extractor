#!/bin/bash 

/usr/bin/find /data -name '*.rar' -execdir /usr/bin/unrar e -o- {} \;

if [[ $? -ne 0 ]] ; then
    exit 1
else
    /usr/bin/find /data -type f -regex ".*\.\(rar\|r[:0-9:][:0-9:]\)" -exec /bin/rm {} \;
fi
