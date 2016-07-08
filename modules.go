package main

import (
	_ "github.com/rohit01/logspout/adapters/kafka"
	_ "github.com/rohit01/logspout/adapters/raw"
	_ "github.com/rohit01/logspout/adapters/syslog"
	_ "github.com/rohit01/logspout/httpstream"
	_ "github.com/rohit01/logspout/routesapi"
	_ "github.com/rohit01/logspout/transports/tcp"
	_ "github.com/rohit01/logspout/transports/tls"
	_ "github.com/rohit01/logspout/transports/udp"
)
