require 'sinatra/base'

class BattleshipsOnline < Sinatra::Base

enable :sessions

  configure do
  	require './lib/game'
    GAME = Game.new
  end

  get '/' do
    @currentplayers = GAME.users
    erb :index
  end

  post '/new' do
    raise "Sorry, the game is full." if GAME.users == 2
    session["user"] = params[:name]
  	erb :new
  end

  get '/boot' do
    GAME = Game.new
    redirect '/'
  end

  get '/cookies' do
    session["value"] ||= "Hello world!"
  "The cookie you've created contains the value: #{session["value"]}"
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
