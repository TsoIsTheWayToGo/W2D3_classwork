
  def my_uniq(arr)
    return [] if arr.length == 0
    result = []
    arr.each do |item|
      result << item if !result.include?(item) 
      
    end
    result
  end
