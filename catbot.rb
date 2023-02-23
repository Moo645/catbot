require 'discordrb'
require 'json'

token = JSON.load(File.open('token.json'))['TOKEN']
# puts token

bot = Discordrb::Commands::CommandBot.new token: token, prefix: '!'

bot.message(with_text: 'dice') do |event|
  dice = rand(1..6)
  event.respond "你骰出#{dice}點!"
end

bot.message(with_text: 'upgrade!') do |event|
  event.respond "恭喜你升級到999等!"
end

bot.run
