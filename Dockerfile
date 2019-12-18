ARG ARCH=armhf
FROM multiarch/alpine:${ARCH}-v3.9

RUN apk add --no-cache gpsd tini

EXPOSE 2947

ENTRYPOINT [ "tini", "--", "/bin/sh", "-c", "/sbin/syslogd -S -O - -n & exec /usr/sbin/gpsd -N -n -G ${*}","--"]
