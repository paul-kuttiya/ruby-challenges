# counting from most right digit
# double the value for every 2nd digit  
  #=> if digit more than 10 substract 9 from result 
# sum all digits
# check sum 
  #=> if ends in 0 == valid

# create valid number
  #=> if not valid append 0
  #=> if valid with 0 alone, return
  #=> if still not valid, increment by 1 until valid

class Luhn
  attr_reader :number
  attr_accessor :num

  def initialize(num)
    @num = num
    @number = @num.to_s.reverse.split('').map(&:to_i)
  end

  def addends
    number.each_with_index.map do |n, idx|
      idx % 2 == 0 ? n : more_than_ten?(n * 2)
    end.reverse
  end

  def more_than_ten?(num)
    num >= 10 ? num - 9 : num
  end

  def checksum
    addends.inject(:+)
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(num)
    n = new(num)
    n = new(num * 10) if !n.valid?
    n.increment_last_number_until_valid(n.num)
  end

  def increment_last_number_until_valid(n)
    loop do
      if self.class.new(n).valid?
        break
      end
      n += 1
    end
    n
  end
end