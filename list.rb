require_relative 'myenumerable'
class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each
    @list.each { |item| yield item }
  end
end

list1 = MyList.new(1, 2, 3, 4)

# Test #filter
puts list1.filter(&:even?)

