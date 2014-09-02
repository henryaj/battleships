require 'sinatra/base'

class Battleships < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/newplayer' do
  	erb :newplayer
  end

  get '/hi' do
  	"Hello!"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
