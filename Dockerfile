FROM ruby:2.4.4

EXPOSE 3000
EXPOSE 8080

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /rails-app

WORKDIR /rails-app
COPY . /rails-app

RUN gem install rails:5.0.0
RUN bundle install

CMD rails server -p 8080
