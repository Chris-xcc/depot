FROM ruby:2.7.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /code
WORKDIR /code
ADD . /code/
RUN bundle config mirror.https://rubygems.org https://gems.ruby-china.com
RUN bundle install