require 'sinatra'
require 'timezone'

get('/') do
  erb :index
end

get('/time') do
  "UTC: #{Time.now.utc.strftime('%Y-%m-%d %H:%M:%S')}"
end

get('/hello/:name') do
  erb :hello
end
