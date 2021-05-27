require 'telegram/bot'
require_relative './lifehack'
require_relative './motivation'
require_relative './programming_quotes'
# require_relative '../config'

class Evergreenbot
  attr_reader :text

  def initialize # rubocop:disable Metrics/CyclomaticComplexity
    Telegram::Bot::Client.run(TOKEN_API) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: 'Welcome to Evergreenbot, I ma a motivational bot. my commands are, /lifehack, /morning_motivation ,/Programming_quotes, /quit, /Confirm /Exit')
        when '/quit'
          bot.api.send_message(chat_id: message.chat.id, text: 'Are you sure you want to quit this early? enter /Confirm to quit')
        when '/Confirm'
          bot.api.send_message(chat_id: message.chat.id, text: 'Goodbye')
        when '/Exit'
          bot.api.send_message(chat_id: message.chat.id, text: 'Goodbye my good friend, i do hope to see you again soon')
        when '/lifehack'
          life = Hacks.new
          bot.api.send_message(chat_id: message.chat.id, text: life.hack_quotes)
        when '/morning_motivation'
          good_morning = Motivation.new
          bot.api.send_message(chat_id: message.chat.id, text: good_morning.good_motivation)
        when '/Programming_quotes'
          sayings = Programmer.new
          bot.api.send_message(chat_id: message.chat.id, text: sayings.program_sayings)
        else
          bot.api.send_message(chat_id: message.chat.id, text: 'Invalid entry. please select /lifehack /morning_motivation /Programming_quotes /quit /Confirm /Exit')
        end
      end
    end
  end
end
