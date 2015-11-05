class Card

  attr_reader :face_value, :suit
  def initialize(face_value, suit)
    @suit = suit
    @face_value = face_value
  end

  def inspect
    "<#{face_value}, #{suit}>"
  end
end
