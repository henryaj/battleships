require 'user'
require 'board'
require 'cell'
require 'ship'

describe User do

	let(:user)    { User.new     }


	context "input" do
		
		it 'should be initialized with a board' do
			expect(user.board.class).to eq Board
		end


		it "should be able to hit a specific cell" do
			user.hit(:A1)
			expect(user.board[:A1].hit?).to eq true
		end

	end

	context "placing ships" do

		let(:carrier) { double :ship, :length => 3 }

		xit 'can be placed on a cell' do
			user.place(carrier, :A1, :A2, :A3)
			expect(user.board[:A1].ship).to eq carrier
		end


		it "can be placed over several cells" do
			user.place(carrier, :A1, :A2, :A3)
			expect(user.board[:A1].ship).to eq carrier
			expect(user.board[:A2].ship).to eq carrier
			expect(user.board[:A3].ship).to eq carrier
		end

		it 'can not place a ship over another ship' do
			user.place(carrier, :A1, :A2, :A3)
			expect{user.place(carrier, :A3, :A4, :A5)}.to raise_error
		end

		it 'knows where to place the ship given axis and starting cell' do
			patrol_boat = Patrol_boat.new
			user.place_ship(patrol_boat, "right", :A1)
			expect(user.board[:A2].ship).to eq patrol_boat
		end



	end


end

