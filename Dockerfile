FROM        quay.io/prometheus/busybox:latest

RUN make build

COPY bind_exporter /bin/bind_exporter

EXPOSE      9119
ENTRYPOINT  [ "/bin/bind_exporter" ]