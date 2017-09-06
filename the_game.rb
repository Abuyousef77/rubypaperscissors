#!/usr/bin/env ruby
require './lib/plays.rb'

# Creates a game object
purple_monkey = Game.new()

puts "Pick a move P1: 'ruby', 'paper', 'scissors'"
player1 = gets.chomp

puts "Pick a move P2: 'ruby', 'paper', 'scissors'"
player2 = gets.chomp

if purple_monkey.wins?(player1,player2)
  puts "Player 1 Wins! :D"
else
  puts "Player 2 Wins! :D"
end
