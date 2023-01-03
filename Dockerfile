FROM alpine:latest

LABEL maintainer="pacocp5@correo.ugr.es" \
      version="v0.0.6"

RUN apk add --update ruby make; \
    adduser -D userRuby; \
    gem install minitest

USER userRuby

WORKDIR /app/test

ENTRYPOINT ["make", "test"]