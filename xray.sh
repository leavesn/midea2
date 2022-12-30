#!/bin/sh
if [ ! -f UUID ]; then
  UUID="d35d0d2c-0416-4e98-8268-5651213e6139"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

