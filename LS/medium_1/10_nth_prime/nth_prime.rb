class Prime
  def self.nth(nth_at)
    fail ArgumentError if nth_at < 1
    return 2 if nth_at == 1

    nth = 2
    test_number = 3
    while nth < nth_at
      test_number += 2
      nth += 1 if is_prime?(test_number)
    end
    test_number
  end

  def self.is_prime?(num)
    half = Math.sqrt(num)
    (2..half).each do |n|
      return false if num % n == 0
    end
    true
  end
end

p Prime.nth(100_001)