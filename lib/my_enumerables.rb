module Enumerable
  # Your code goes here

  def my_each_with_index
    i = 0
    self.length.times do
      yield(self[i], i)
      i += 1
    end
    self
  end

  def my_select
    filtered_arr = []
    i = 0
    self.length.times do
      filtered_arr.push(self[i]) if yield(self[i])
      i += 1
    end
    filtered_arr
  end

  def my_all?
    i = 0
    x = false
    self.length.times do
      x = yield(self[i])
      return false unless x

      i += 1
    end
    x
  end

  def my_any?
    i = 0
    x = false
    self.length.times do
      x = yield(self[i])
      return true unless x == false

      i += 1
    end
    x
  end
 
    

  end



class Array
  # Define my_each here
  def my_each
    i = 0
    self.length.times do
      yield(self[i])
      i += 1
    end
    self
  end
end


puts [1, 1, 2, 3, 5, 8, 13, 21, 34].my_any? {|value| value > 0}