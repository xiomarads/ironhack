require_relative("lib/authenticator.rb")
require_relative("lib/word_counter.rb")

authenticator = Authenticator.new("xiomarad", "moveyoure")
authenticator.user_info
authenticator.password_info
authenticator.user_word_counter