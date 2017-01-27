#!/bin/bash

if [ -z $1 ] || [ -z $2 ]; then
    echo 'Usage:'
    echo "\t$0 filename MD5Hash"
    exit 1
fi

PATH="$PATH:/sbin"

echo "diff <(md5 $1 | awk '{print \$4}') <(echo $2)"
diff <(md5 $1 | awk '{print $4}') <(echo $2)
