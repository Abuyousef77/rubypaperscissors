require('plays')

RSpec.describe('String#wins?') do
  it("returns true if ruby is the object and scissors is the argument") do
    game = Game.new()
    expect(game.wins?("ruby", "scissors")).to eq(true)
  end
  it("returns true if ruby is the object and scissors is the argument") do
    game = Game.new()
    expect(game.wins?("scissors", "paper")).to eq(true)
  end
  it("returns true if ruby is the object and scissors is the argument") do
    game = Game.new()
    expect(game.wins?("ruby", "paper")).to eq(false)
  end
end
