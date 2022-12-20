FROM ruby:3.2.0-rc1-alpine3.17

RUN apk add --update make
RUN adduser -D userRuby

USER userRuby

WORKDIR /home/userRuby

COPY --chown=userRuby Gemfile Gemfile.lock ./

RUN gem install bundler:2.2.33
RUN bundle install

WORKDIR /app/test

CMD ["make", "test"]