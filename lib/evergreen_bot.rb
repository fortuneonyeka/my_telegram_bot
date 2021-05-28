require 'telegram/bot'
require_relative './lifehack'
require_relative './motivation'
require_relative './programming_quotes'
require_relative '../config'

class Evergreenbot
  attr_reader :text

  def initialize # rubocop:disable Metrics/CyclomaticComplexity/
    Telegram::Bot::Client.run(TOKEN_API) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id,
                               text: 'Welcome to Evergreenbot, I ma a motivational bot. my commands are, /lifehack /morning_motivation ,/Programming_quotes, /quit, /Confirm /Exit')
        when '/quit'
          bot.api.send_message(chat_id: message.chat.id,
                               text: 'Are you sure you want to quit this early? enter /Confirm to quit')
        when '/Confirm'
          bot.api.send_message(chat_id: message.chat.id, text: 'Goodbye')
        when '/Exit'
          bot.api.send_message(chat_id: message.chat.id,
                               text: 'Goodbye my good friend, i do hope to see you again soon')
        when '/lifehack'
          bot.api.send_message(chat_id: message.chat.id, text: Hacks.new.instance_eval { hack_quotes })
        when '/morning_motivation'
          bot.api.send_message(chat_id: message.chat.id, text: Motivation.new.instance_eval { good_motivation })
        when '/Programming_quotes'
          bot.api.send_message(chat_id: message.chat.id, text: Programmer.new.instance_eval { program_sayings })
        else
          bot.api.send_message(chat_id: message.chat.id,
                               text: 'Invalid entry. please select /lifehack /morning_motivation /Programming_quotes /quit /Confirm /Exit')
        end
      end
    end
  end
end
