FROM alpine:latest

LABEL maintainer="pacocp5@correo.ugr.es" \
      version="v0.0.6"

RUN apk add --update ruby make; \
    adduser -D userRuby

USER userRuby

ENV GEM_HOME /home/userRuby/.local/bundle \
    BUNDLE_SILENCE_ROOT_WARNING=1 \
	BUNDLE_APP_CONFIG="$GEM_HOME" 
ENV PATH $GEM_HOME/bin:$PATH

RUN gem install bundler:2.3.25

WORKDIR /home/userRuby

COPY --chown=userRuby Gemfile Gemfile.lock ./

RUN bundle install; \
    rm /home/userRuby/Gemfile /home/userRuby/Gemfile.lock

WORKDIR /app/test

ENTRYPOINT ["make", "test"]