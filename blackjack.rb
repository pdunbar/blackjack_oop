require_relative 'card'
require_relative 'deck'
require_relative 'hand'
require_relative 'game'

puts "Welcome to Blackjack!"
puts "--"

game = Game.new()
game.start
game.player_hit
game.dealer_hit
game.winner


