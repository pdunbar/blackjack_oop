class Deck
  attr_reader

  def initialize
    @values = [2,3,4,5,6,7,8,9,10,"J","Q","K","A"]
    @suits = ["♥", "♠", "♣","♦"]
  end

  def make_deck
    temp_deck = []
    @values.each do |value|
      @suits.each do |suit|
        temp_deck << Card.new(value, suit)
      end
    end
    temp_deck.shuffle!
  end

end
