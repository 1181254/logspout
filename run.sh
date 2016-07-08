#!/bin/sh

export PORT="${PORT:-80}"

# Fire route API 5 seconds after launch
(
	sleep 5
	if [ "X" != "X${ROUTE_JSON}" ]; then
		curl -v "http://localhost:${PORT}/routes" -d "$ROUTE_JSON"
	fi
) &

exec /bin/logspout $@
