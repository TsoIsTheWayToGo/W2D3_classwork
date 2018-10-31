require 'test'

describe "#my_uniq" do
  it "returns an empty array if empty array is passed" do
    expect(my_uniq([])).to eq([])
  end
  
  it "takes out duplicates and returns a unique array" do 
    expect(my_uniq([1,1,6,0])).to eq([1,6,0])
  end
end