require 'rspec'
require 'deck'

describe "Deck" do 
  subject(:test_deck) { Deck.new }
  describe "#initialize" do 
    it "creates new deck" do 
      expect(test_deck.stack).to be_a(Array)
    end
    
    it "has 52 cards" do 
      expect(test_deck.stack.length).to eq(52)
    end
    
    it "has instances of Card class" do
      expect(test_deck.stack[0]).to be_a(Card)
    end
    
    
  end
  
end