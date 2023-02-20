require 'discordrb'
require 'json'

token = JSON.load(File.open('token.json'))['TOKEN']
# puts token

bot = Discordrb::Commands::CommandBot.new token: token, prefix: '!'

bot.message(with_text: 'dice') do |event|
  dice = rand(1..6)
  event.respond "你骰出#{dice}點!"
end

bot.run
