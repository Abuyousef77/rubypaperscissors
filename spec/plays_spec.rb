require('plays')

RSpec.describe('Game#wins?') do
  it("returns true if ruby is the first argument and scissors is the second argument") do
    game = Game.new()
    expect(game.wins?("ruby", "scissors")).to eq(true)
  end
  it("returns true if scissors is the first argument and paper is the second argument") do
    game = Game.new()
    expect(game.wins?("scissors", "paper")).to eq(true)
  end
  it("returns false if ruby is the first argument and paper is the second argument") do
    game = Game.new()
    expect(game.wins?("ruby", "paper")).to eq(false)
  end
end

RSpec.describe('Game#winner') do
  it("returns true if ruby is the object and scissors is the argument") do
    game = Game.new()
    expect(STDOUT).to receive(:puts).with('Player 1 wins!! :D')
    game.winner(true)
  end
  it("returns true if ruby is the object and scissors is the argument") do
    game = Game.new()
    expect(STDOUT).to receive(:puts).with('Player 2 wins!! :D')
    game.winner(false)
  end
end
