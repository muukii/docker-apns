#! bin/bash

TOKEN=$1
JSON=$(cat $2)

echo $JSON

if [ -z "$TOKEN" ]; then
    echo error: invalid TOKEN
fi

if [ -z "$JSON" ]; then
    echo error: invalid JSON
fi

_JSON=`echo $JSON | tr '\n' ' ' | sed -e 's# ##g'`

echo $_JSON

apn push "${TOKEN}" -c "/usr/local/private_key/push.pem" -P ${_JSON}

