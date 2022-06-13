
arr = [1,2,3]

def test_meth
  arr = [1,2,3]
  i = 0
  arr.length.times do
    yield(arr[i])
    i += 1
  end
end

test_meth { |p| puts "#{p}" }


class Party
  def my_each
    puts "yep"
  end

end

c = Party.new
c.my_each