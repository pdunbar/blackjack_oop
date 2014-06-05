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
        puts player_hand.hand[-1]
        puts "Your score is: #{@player_hand.score}"
        puts
        if @player_hand.score > 21
          puts "YOU BUST!"
          return false
        end
      elsif answer == "s"
        puts "You stood at #{player_hand.score}"
        puts
        return false
      else
        puts "please type H or S"
      end
    end
  end

  def dealer_hit
    while @dealer_hand.score < 17 && @player_hand.score <= 21
      @dealer_hand.deal_card
      puts "Dealer hits, and gets: #{@dealer_hand.hand[-1]}"
    end
    if @dealer_hand.score == 21
      puts "Dealer gets blackjack!"
    elsif @dealer_hand.score < 21
      puts "Dealer stands at #{@dealer_hand.score}"
    else
      puts "Dealer busts with #{@dealer_hand.score}"
    end
  end

  def start
    puts "Your score is: #{@player_hand.score}"
    puts @player_hand.hand
    puts
    puts "Dealer hand is: "
    puts @dealer_hand.hand[1]
    puts "[?]"
    puts

  end

  def winner
    if @dealer_hand.score > 21 && @player_hand.score <= 21
      puts "You Win!"
    elsif @player_hand.score >= @dealer_hand.score && @player_hand.score <= 21
      puts "You win!"
    elsif
      @player_hand == @dealer_hand
      puts "Tie"
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
