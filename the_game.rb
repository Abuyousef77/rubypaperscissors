#!/usr/bin/env ruby
require './lib/plays.rb'

# Creates a game object
purple_monkey = Game.new()
continue = true
while continue
  puts "Pick a move P1: 'ruby', 'paper', 'scissors'"
  player1 = gets.chomp
  puts "Pick a move P2: 'ruby', 'paper', 'scissors'"
  player2 = gets.chomp
  result = purple_monkey.wins?(player1, player2)
  if result === "tie"
    puts "It's a tie, shoot again"
  elsif result === "invalid"
    puts "Some invalid move"
  else
    purple_monkey.winner(result)
    puts "Player 1 Score = #{purple_monkey.p1_score}"
    puts "Player 2 Score = #{purple_monkey.p2_score}"
    puts "Want to play again? y/n"
    decision = gets.chomp
    if decision === "n"
      continue = false
    end
  end
end
