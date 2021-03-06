class Ship

	def initialize(size)
		@size = size 
		@hitpoints = size 
		@placed = false
		@sunk = false
	end 

	def size 
		@size 
	end 

	def hp
		@hitpoints 
	end 

	def hit! 
		raise "this ship already sunk" if @hitpoints == 0 
		@hitpoints -= 1
		if @hitpoints == 0 then @sunk = true
		end
	end 

	def sunk? 
		@hitpoints == 0 
	end

	def placed?
		@placed
	end

	def place
		@placed = true
	end
	
end

class Fisherboat < Ship

	def initialize(size=1)
		super
	end
end

class Patrol_boat < Ship

	def initialize(size=2)
		super
	end
end

class Destroyer < Ship 
	
	def initialize(size=3)
		super
	end 
end

class Battleship < Ship

	def initialize(size=4)
		super
	end 
end

class Aircraft_carrier < Ship

	def initialize(size=5)
		super
	end
end 



