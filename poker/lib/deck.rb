require_relative 'card'


class Deck
  attr_reader :stack
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
  def self.generate_deck
    new_deck = []
    
    SUITS.each do |suit, symbol|
      CARDS.each do |name, value|
        new_deck << Card.new(name,suit)
      end
    end
    
    new_deck
  end
  
  def initialize(deck = Deck.generate_deck)
    @stack = deck
  end
  
end