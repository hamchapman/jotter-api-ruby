require 'bundler/setup'
require 'sinatra'
require 'json'

get '/' do
  "I'm a chicken"
end

post '/update' do
  body = JSON.parse(request.body.read)
  puts "Timestamp: #{Time.now.to_i}; body: #{body}"
  200
end
