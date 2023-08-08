FROM ruby:3.1.3

RUN apt-get clean all && apt-get update -qq && apt-get install -y build-essential libpq-dev

WORKDIR /app

COPY Gemfile* .
RUN bundle install

COPY . .

RUN chmod +x entrypoint.sh
EXPOSE 3000
ENTRYPOINT ["/app/entrypoint.sh"]
CMD ["rails", "server", "-b", "0.0.0.0"]
