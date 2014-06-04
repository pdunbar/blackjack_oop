class Game
  attr_reader :player_hand, :shuffled, :dealer_hand

  def initialize
    deck = Deck.new
    @shuffled = deck.make_deck
    @player_hand = Hand.new(@shuffled)
    @dealer_hand = Hand.new(@shuffled)
  end


  def player_hit
    while true
      print "Hit or Stand? (H/S): "
      answer = gets.chomp().downcase
      if answer == "h"
        player_hand.deal_card
        puts "Your score is #{@player_hand.score}"
      elsif answer == "s"
        puts "you stood at #{player_hand.score}"
        break
      else
        puts "please type H or S"
      end
    end
  end

  def dealer_hit
    while @dealer_hand.score < 17
      @dealer_hand.deal_card
    end
    if @dealer_hand.score = 21
      puts "Dealer gets blackjack!"
    elsif @dealer_hand.score < 21
      puts "Dealer stands at #{@dealer_hand.score}"
    else
      puts "Dealer busts with #{@dealer_hand.score}"
    end
  end

  def start
    @player_hand.deal_card.deal_card
    @dealer_hand.deal_card.deal_card
    puts "Your hand is: "
    puts @player_hand.hand
    puts "Dealer hand is: "
    puts @dealer_hand.hand
    puts "Your score is: #{@player_hand.score}"
  end

  def winner
    if @player_hand.score > @dealer_hand.score
      puts "You win!"
    else
      puts "Dealer wins!"
    end
  end

end






# puts "Do you want to hit or stand? (H/S)"

# puts "----------------\n\n"
# puts "This is dealer!!: "

# dealer_hand = Hand.new(shuffled)
# dealer = dealer_hand.two_cards(shuffled)
# puts dealer
