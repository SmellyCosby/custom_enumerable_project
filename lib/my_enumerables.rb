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


[1, 2, 2, 3, 4].my_select {|p| p > 1}