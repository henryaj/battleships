require 'sinatra/base'

class Battleships < Sinatra::Base
  enable :sessions

  configure do
  	require File.join(File.dirname(__FILE__), 'game.rb')
  	GAME = Game.new	
  end

  get '/' do
    erb :index
  end

  get '/new' do
  	erb :new
  end

  post '/new' do
  	@name = params[:name].to_s
    player = GAME.add_player(@name)
  	session["me"] = player.object_id
    "Hi #{@name}!"
    "Player data: #{p player}"
    "Player name: #{p player.name}"
  end

  get '/hello' do
  	"hi"
  end

  get '/reset' do
    GAME = Game.new
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
