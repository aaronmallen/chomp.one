FROM ruby:3.1-alpine as base
WORKDIR /var/www/chomp
RUN apk --update add \
  bash \
  build-base \
  git \
  postgresql-dev \
  tzdata
RUN gem install bundler -v 2.3.5

FROM base as dev
COPY . ./
RUN bundle check || bundle install --jobs 20 --retry 5
