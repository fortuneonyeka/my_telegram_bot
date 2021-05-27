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
    
    when '/Exit'
      bot.api.send_message(chat_id: message.chat.id, text: "Goodbye my good friend, i do hope to see you again soon")
    when '/lifehack'
      bot.api.send_message(chat_id: message.chat.id, text: "Optimisim is the faith that leads to achievement. Nothing can be be achieved without hope and confidence")
    when '/morning_mutivation'
      bot.api.send_message(chat_id: message.chat.id, text: "The day has yet to be written, but there are several ways to fill the page, its entirely up to you to write your own story")
    end
  end
end
