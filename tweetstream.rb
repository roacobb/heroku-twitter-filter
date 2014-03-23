require 'tweetstream'
require 'sinatra'
require 'thin'

TweetStream.configure do |config|
  config.consumer_key       = '7DffG4JlbEFbimzRfjwKQ'
  config.consumer_secret    = 'XDRfAeM7C6DTkVl1BTcz99GZjx427WA79RRDcYy8'
  config.oauth_token        = '361902706-9V4fQ6XOn14fWIi9CGOkypMgDtxvCdEz23o5nPgU'
  config.oauth_token_secret = 'oX0Y7zxKA4LpS5jkFlHaWC7WyqClQCypSTsoAnxjSrIjz'
  config.auth_method        = :oauth
end

TweetStream::Client.new.track('banana', 'coconut') do |status|
  puts "#{status.text}"
end
