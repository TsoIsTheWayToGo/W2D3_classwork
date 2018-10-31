require 'test'

describe "#my_uniq" do
  it "returns an empty array if empty array is passed" do
    expect(my_uniq([])).to eq([])
  end
  
  it "takes out duplicates and returns a unique array" do 
    expect(my_uniq([1,1,6,0])).to eq([1,6,0])
  end
end

RSpec.describe "Array" do
  describe "#two_sum" do
    it "Returns an empty array if self is empty" do
      expect([].two_sum).to eq([])
    end
    
    it "finds all pairs of positions where the elements at those positions sum to zero." do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0,4],[2,3]])
    end
    
    it "it returns pairs with smaller index first" do
      expect([-1,1,-2,0,2].two_sum).to eq([[0,1],[2,4]])
    end
  end
end

describe "#my_transpose" do
  it "raises an error if nested arrays are not the same lenth" do
    test = [[0, 1, 2],[3, 4, 5],[6, 7, 8,1]]
    expect {my_transpose(test)}.to raise_error(ArgumentError)
  end
  it "returns an array of columns" do
    test = [[0, 1, 2],[3, 4, 5],[6, 7, 8]]
    test_result = [[0, 3, 6],[1, 4, 7],[2, 5, 8]]
    expect(my_transpose(test)).to eq(test_result)
  end 
end

describe "#stock_picker" do
  it "return nil if there if prices are declining" do 
    expect(stock_picker([15,14,13,12,11])).to eq(nil)
  end
  it "returns the days as indices when you should buy and sell stocks" do
  expect(stock_picker([5,21,5,15,20,25])).to eq("you should buy on day: 1 and sell on day: 6")
  end
end