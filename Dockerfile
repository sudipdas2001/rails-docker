# syntax=docker/dockerfile:1
FROM ruby:3.0.0
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]

