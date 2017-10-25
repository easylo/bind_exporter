FROM        quay.io/prometheus/busybox:latest


COPY bind_exporter /bin/bind_exporter

EXPOSE      9119
ENTRYPOINT  [ "/bin/bind_exporter" ]