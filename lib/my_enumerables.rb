module Enumerable
  # Your code goes here
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    # code here
    i = 0
    self.length.times do
      yield(self[i])
      i += 1
    end
  end
end


arr = [1,2,3]

arr.my_each {|p| puts p}