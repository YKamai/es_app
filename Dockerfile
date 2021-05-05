FROM ruby:3.0.1

ARG ES_HOST

RUN apt-get update -qq && apt-get install -y nodejs
WORKDIR /app
COPY . .
RUN bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
