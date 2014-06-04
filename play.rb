require_relative 'blackjack'

print "Welcome to Blackjack!"

# Deal to Player
print "Dealing to player- These are your cards"
player = Hand.new()

player.score


while (true)
print 'Your score: '
print "Do you want to hit or stand? (H/S)"
hit_or_stand = gets.chomp.to_f
hit_or_stand = hit_or_stand.downcase()

if hit_or_stand = "stand"
  break
end

#player hits


print "giving the player another card"
# Deal to Dealer...
print 'Dealer stands or hits'
# Hit or Stand from Player

if player.score >= 21, print "you lose, bust!!"


### DEALER'S TURN ####
Dealer = Hand.new()

player.score
