require_relative 'enumerable'

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each
    return to_enum(:each) unless block_given?

    count = 0
    while count < @list.length
      yield(@list[count])
      count += 1
    end
    @list
  end
end

# Create  list
list = MyList.new(1, 2, 3, 4)

# Test #all?
list.all? { |e| e < 5 }
# result = true
list.all? { |e| e > 5 }
# result = false

# Test #any?
list.any? { |e| e == 2 }
# result = true
list.any? { |e| e == 5 }
# result = false

# Test #filter
list.filter(&:even?)
# result = [2, 4]
