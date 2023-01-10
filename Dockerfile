FROM alpine:latest

LABEL maintainer="pacocp5@correo.ugr.es" \
      version="v0.0.6"

RUN apk add --update ruby make; \
    adduser -D pcp 

USER pcp

ENV GEM_HOME="/home/pcp/.local/bundle"
ENV BUNDLE_SILENCE_ROOT_WARNING=1 \
	BUNDLE_APP_CONFIG=${GEM_HOME} \
    PATH="${GEM_HOME}/bin:${PATH}"

RUN gem install bundler

WORKDIR /home/pcp

COPY --chown=pcp Gemfile Gemfile.lock ./

RUN bundle install; \
    rm /home/pcp/Gemfile /home/pcp/Gemfile.lock

WORKDIR /app/test

ENTRYPOINT ["make", "test"]