require "byebug"
  def my_uniq(arr)
    return [] if arr.length == 0 
    result = []
    arr.each do |item|
      result << item if !result.include?(item) 
    end
    result
  end

  class Array
    
    def two_sum
      # byebug
      return [] if self.length == 0
      result = []
      (self.length - 1).times do |i|
        (i+1...self.length).each do |j|
          if self[i] + self[j] == 0
            result << [i,j]
          end
        end
      end
      result
    end
  
  end

  
  def my_transpose(array)
  
    raise ArgumentError unless array.all? {|el| el.length == array[0].length}
    
    result = []
    i = 0
    while i < array.length
      j = 0
      temp = []
      while j < array.length
        temp << array[j][i]
        j += 1
      end
      result << temp
      i += 1
    end 
    result
  end
  
  def stock_picker(array)
    max = array.max
    max_index = array.index(max)
    min = array.min
    min_index = array.index(min)
    if max_index > min_index
      return "you should buy on day: #{min_index + 1} and sell on day: #{max_index + 1}"
    end
    return nil
  end