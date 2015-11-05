require_relative "card.rb"
class Deck

  FACE_VALUES = ['2','3','4','5','6','7','8','9','10','J','Q','K','A']
  SUITS = [:club, :diamond, :heart, :spade]

  attr_reader :cards
  def initialize
    @cards = populate
  end

  def populate
    result = []
    FACE_VALUES.each do |value|
      SUITS.each do |suit|
        result << Card.new(value, suit)
      end
    end
    result
  end

  def deal_card
    @cards.shift
  end

  def shuffle
    @cards = @cards.shuffle
  end

end
