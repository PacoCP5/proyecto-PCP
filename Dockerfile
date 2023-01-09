FROM alpine:latest

LABEL maintainer="pacocp5@correo.ugr.es" \
      version="v0.0.6"

RUN apk add --update ruby make; \
    adduser -D user

USER user

ENV GEM_HOME="/home/user/.local/bundle"
ENV BUNDLE_SILENCE_ROOT_WARNING=1 \
	BUNDLE_APP_CONFIG=${GEM_HOME} \
    PATH="${GEM_HOME}/bin:${PATH}"

RUN gem install bundler:2.3.25

WORKDIR /home/user

COPY --chown=user Gemfile Gemfile.lock ./

RUN bundle install; \
    rm /home/user/Gemfile /home/user/Gemfile.lock

WORKDIR /app/test

ENTRYPOINT ["make", "test"]