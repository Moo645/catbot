FROM justtheletterh/discordrb:latest
RUN mkdir /app
WORKDIR /app
COPY catbot.rb /app/catbot.rb
COPY token.json /app/token.json
CMD ["ruby", "catbot.rb"]
