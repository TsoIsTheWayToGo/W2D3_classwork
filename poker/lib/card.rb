class Card
  attr_reader :name, :suit
  SUITS = {
    hearts: "♥️",
    diamonds:"♦️",
    spades: "♠️",
    clubs: "♣️"
  }
  CARDS = {
    two: 2,
    three: 3,
    four: 4,
    five: 5,
    six: 6,
    seven: 7,
    eight: 8,
    nine: 9,
    ten: 10,
    jack: 11,
    queen: 12,
    king: 13,
    ace: 14
  }
  def initialize(name,suit)
    @name = name
    # @value = value
    @suit = suit
    # @card = symb/ol
  end  
end