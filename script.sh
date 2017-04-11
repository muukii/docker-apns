#! bin/bash

TOKEN=$1
JSON=$2

if [ -z $TOKEN ]; then
    echo error: invalid TOKEN
fi

if [ -z $JSON ]; then
    echo error: invalid JSON
fi

_JSON=`echo $JSON | tr '\n' ' ' | sed -e 's# ##g'`

apn push "${TOKEN}" -c "/usr/local/private_key/push.pem" -P ${_JSON}

