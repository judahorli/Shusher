require "discordrb"
require "sinatra"
require "rubygems"

bot = Discordrb::Bot.new token: ENV["SHUSH_TOKEN"]

SHUSH = "\u{1F92B}"

bot.message(with_text: /[\WA-Z]*[A-Z]+[\WA-Z]*/ ) do |event|
	message = event.message
	message.react SHUSH
end

bot.run
