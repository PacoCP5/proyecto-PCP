FROM alpine:latest

LABEL maintainer="pacocp5@correo.ugr.es"

RUN apk add --update \
                    ruby \
                    make 

RUN adduser -D userRuby

USER userRuby

# Obtenido de la imagen oficial de entorno
ENV GEM_HOME /home/userRuby/.local/bundle
ENV BUNDLE_SILENCE_ROOT_WARNING=1 \
	BUNDLE_APP_CONFIG="$GEM_HOME"
ENV PATH $GEM_HOME/bin:$PATH

RUN gem install bundler:2.3.25

WORKDIR /home/userRuby

COPY --chown=userRuby Gemfile Gemfile.lock ./

RUN bundle install  

WORKDIR /app/test

ENTRYPOINT ["make", "test"]