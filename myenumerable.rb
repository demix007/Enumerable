module MyEnumerable
  # all method
  def all?
    @list.all? { |item| yield(item) }
  end

  # any method
  def any?
    @list.any? { |item| yield(item) }
  end

  # filter method
  def filter
    @list.select { |item| yield(item) }
  end
end
