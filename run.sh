#!/bin/sh

export ROUTE_JSON

# Fire route API 5 seconds after launch
(
	sleep 5
	if [ "X" != "X${ROUTE_JSON}" ]; then
		curl http://localhost:8000/routes -d "$ROUTE_JSON"
	fi
) &

exec /bin/logspout $@
