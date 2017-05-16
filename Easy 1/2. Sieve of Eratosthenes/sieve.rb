class Sieve
  attr_reader :range

  def initialize(num)
    @range = (2..num).to_a
  end

  def primes
    range.each do |num|
      range.reject! { |n| n % num == 0 && n != num  }
    end
  end 
end