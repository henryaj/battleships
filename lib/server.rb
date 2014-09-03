require 'sinatra/base'

class BattleshipsOnline < Sinatra::Base
  configure do
  	require './lib/game'
  end

  get '/' do
    erb :index
  end

  post '/new' do
  	@game = Game.new
  	@game.player1.name = params[:Name]
  	erb :new
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
