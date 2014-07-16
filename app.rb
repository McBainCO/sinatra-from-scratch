require "sinatra"
require "rack-flash3"
require "gschool_database_connection"
require "active_record"

class App < Sinatra::Application
  enable :sessions
  use Rack::Flash

  def initialize
    super
    @database_connection = GschoolDatabaseConnection::DatabaseConnection.establish(ENV["RACK_ENV"])

  end


get '/' do
  erb :home
end

post '/' do
    name = params[:name]
    email = params[:email]
    user_registration(name, email)
end

get '/signup' do
  erb :signup
end

end