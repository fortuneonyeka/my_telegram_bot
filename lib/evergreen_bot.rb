require 'telegram/bot'
require_relative '../config.rb'

Telegram::Bot::Client.run(TOKEN_API) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "Welcome to Evergreenbot, I ma a multivational bot. my commands are /lifehack /morning_mutivation /Programming_quotes /quit /Confirm /Exit")
    when '/quit'
      bot.api.send_message(chat_id: message.chat.id, text: "Are you sure you want to quit this early? enter /Confirm to quit")
    when '/Confirm'
      bot.api.send_message(chat_id: message.chat.id, text: "Goodbye")

    end
  end
end
