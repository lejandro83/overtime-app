FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /overtime
WORKDIR /overtime
ADD Gemfile /overtime/Gemfile
ADD Gemfile.lock /overtime/Gemfile.lock
RUN bundle install
ADD . /overtime
