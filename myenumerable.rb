module MyEnumerable
  def my_all?
    return unless block_given?

    result = false
    @list.each do |n|
      result = true if yield(n)
    end
    result
  end

  def my_any?
    return unless block_given?

    any = false
    @list.each do |n|
      any = true if yield(n)
    end
    any
  end

  def my_filter?
    return unless block_given?

    number_array = []
    @list.each do |n|
      number_array.push(n) if yield(n)
    end
    number_array
  end
end
