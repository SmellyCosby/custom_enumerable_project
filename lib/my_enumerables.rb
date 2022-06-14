module Enumerable
  def my_each_with_index
    i = 0
    length.times do
      yield(self[i], i)
      i += 1
    end
    self
  end

  def my_select
    result_array = []
    i = 0
    length.times do
      result_array.push(self[i]) if yield(self[i])
      i += 1
    end
    result_array
  end

  def my_all?
    i = 0
    all_same_value = false
    length.times do
      all_same_value = yield(self[i])
      return false unless all_same_value

      i += 1
    end
    all_same_value
  end

  def my_any?
    i = 0
    value_in_array = false
    length.times do
      value_in_array = yield(self[i])
      return true if value_in_array

      i += 1
    end
    value_in_array
  end

  def my_none?
    i = 0
    value_not_included = true
    length.times do
      return value_not_included = false if yield(self[i])

      i += 1
    end
    value_not_included
  end

  def my_count
    result_array = []
    i = 0
    length.times do
      return length unless block_given?

      result_array.push(self[i]) if yield(self[i])
      i += 1
    end
    result_array.length
  end

  def my_map
    result_array = []
    i = 0
    length.times do
      result_array.push(yield(self[i]))
      i += 1
    end
    result_array
  end

  def my_inject(accumulator = self[0])
    i = 0
    length.times do
      accumulator = yield(accumulator, self[i])
      i += 1
    end
    accumulator
  end
end

class Array
  # Define my_each here
  def my_each
    i = 0
    length.times do
      yield(self[i])
      i += 1
    end
    self
  end
end
