class Luhn
  def initialize(num)
    @digits = num.to_s.chars.map(&:to_i)
  end

  def addends
    digits = @digits.dup
    adjustment = digits.length.even? ? 0 : 1
    digits.each_index { |i| digits[i] *= 2 if (i + adjustment) % 2 == 0 }
    digits.map { |num| num > 9 ? num - 9 : num }
  end

  def checksum
    addends.reduce(:+)
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(num)
    num_w_check = num * 10
    luhnify = Luhn.new(num_w_check)

    luhnify.valid? ? num_w_check : num_w_check + (10 - luhnify.checksum % 10)
  end
end