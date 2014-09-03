require 'sinatra/base'

class BattleshipsOnline < Sinatra::Base
  get '/' do
    'Hello BattleshipsOnline!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
