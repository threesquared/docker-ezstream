FROM alpine:3.9

LABEL maintainer="Ben Speakman <ben@3sq.re>"

ARG UID=1000
ARG GID=1000

RUN apk -q update \
    && apk -q --no-progress add ezstream \
    && rm -rf /var/cache/apk/*

VOLUME ["/ezstream", "/music"]

USER $UID:$GID

ENTRYPOINT ["/usr/bin/ezstream" "-c" "/ezstream/ezstream.xml"]
