require 'sinatra/base'

class BattleshipsOnline < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/new' do
  	erb :new
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
