class Series
  attr_reader :nums

  def initialize(num)
    @nums = num.split('').map(&:to_i)
  end

  def slices(n)
    if n > nums.length
      fail ArgumentError.new("Slice is longer than input.")
    end
    @nums.each_cons(n).to_a
  end
end
