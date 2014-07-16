require "sinatra"
require "rack-flash3"
require "gschool_database_connection"



get '/' do
  erb :home
end

get '/signup' do
  erb :signup
end

post '/signup' do
  erb :signup
end