class Hand
  attr_reader :hand, :score, :deck

  def initialize(deck)
    @deck = deck
    @hand = []
    2.times do deal_card end
  end

  def deal_card
    @hand << deck.shift
  end


  def score
    score = 0
    ace_counter = 0
    @hand.each do |card|
      if card.value == "K" || card.value == "Q" || card.value == "J"
        score += 10
      elsif card.value == "A"
        ace_counter += 1
        score += 11
      else
        score += card.value
      end
    end
    while ace_counter>0 && score > 21
      score -= 10
      ace_counter -= 1
    end
    @score = score
  end

end



