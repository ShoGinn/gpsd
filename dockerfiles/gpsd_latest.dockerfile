FROM alpine

RUN apk add --no-cache gpsd

COPY rootfs /

EXPOSE 2947

ENTRYPOINT ["/usr/local/bin/docker_entrypoint.sh"]
