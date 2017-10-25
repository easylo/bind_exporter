# Bind Exporter
[![GoDoc](https://godoc.org/github.com/easylo/prometheus-bind-exporter?status.svg)](https://godoc.org/github.com/easylo/prometheus-bind-exporter)
[![Build Status](https://travis-ci.org/easylo/prometheus-bind-exporter.svg)](https://travis-ci.org/easylo/prometheus-bind-exporter)
[![Go Report Card](https://goreportcard.com/badge/easylo/prometheus-bind-exporter)](https://goreportcard.com/report/easylo/prometheus-bind-exporter)

Export BIND(named/dns) v9+ service metrics to Prometheus.

## Getting started

```bash
make
./bind_exporter [flags]
```

## Troubleshooting

Make sure BIND was built with libxml2 support. You can check with the following
command: `named -V | grep libxml2`.

Configure BIND to open a statistics channel. It's recommended to run the
bind_exporter next to BIND, so it's only necessary to open a port locally.

```
statistics-channels {
  inet 127.0.0.1 port 8080 allow { 127.0.0.1; };
};
```

---

Copyright @ 2016 DigitalOcean™ Inc.
