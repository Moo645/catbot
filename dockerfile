FROM ruby:2.7-alpine 

RUN mkdir /app
WORKDIR /app

RUN apk update && apk add build-base
RUN gem install discordrb 

COPY catbot.rb /app/catbot.rb
COPY token.json /app/token.json

CMD ["ruby", "catbot.rb"]
