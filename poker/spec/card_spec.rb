require 'rspec'
require 'card'

RSpec.describe "Card Class" do 
  describe "#initialize" do
    subject(:highcard) { Card.new("king", "hearts") }
    
    it "makes a new card" do 
      expect(highcard.name).to eq("king")
    end
    
    it "has correct suit" do 
      expect(highcard.suit).to eq("hearts")
    end
  end
end