class PhoneNumber
  def initialize(number)
    @number = number.gsub(/[\s\.\(\)\-]/, '')
  end
  
  def number
    return invalid_number if invalid
    return check_eleven_digits(@number) if @number.size == 11
    @number
  end

  def area_code
    number[0..2]
  end

  def to_s
    "(#{area_code}) #{number[3..5]}-#{number[6..10]}"
  end

  private

  def invalid_number
    '0' * 10
  end

  def invalid
    wrong_size || has_letter
  end

  def has_letter
    @number =~ /\D+/
  end

  def wrong_size
    @number.size < 10 || @number.size > 11
  end

  def check_eleven_digits(number)
    return invalid_number if number.size == 11 && number[0] != '1'
    @number[1..number.size]
  end
end