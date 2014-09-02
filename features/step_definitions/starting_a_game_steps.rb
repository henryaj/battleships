Then(/^a new game should be initialised$/) do
  expect(Game).to receive(:new)
end

Then(/^player(\d+)\.name should equal "(.*?)"$/) do |arg1, arg2|
  expect(game.player1.name).to eq arg2
end