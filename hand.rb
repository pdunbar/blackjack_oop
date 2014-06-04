class Hand
  attr_reader :hand, :score

  def initialize(deck)
    @hand = []
    @deck = deck

    2.times do
      @hand << deck.shift
    end
    @hand
  end

  def deal_card
    @hand << @deck.shift
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
        @score += card.value
      end
    end
    while ace_counter>0 && score > 21
      score -= 10
    end
    @score = score
  end

end



