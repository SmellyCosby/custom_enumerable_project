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

end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
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


[1,2].my_each_with_index {|p, i| print "#{i}. #{p}\n"}