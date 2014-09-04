require_relative '../lib/cell.rb'
require_relative '../lib/board.rb'
require_relative '../lib/user.rb'
require_relative '../lib/ship.rb'

class Game

	attr_reader :players

	def initialize
		@players = []
	end

	def add_player(name)
		raise if @players.count == 2
		@players << User.new(name)
	end

end
