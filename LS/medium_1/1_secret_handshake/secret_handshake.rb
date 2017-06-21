class SecretHandshake
  attr_accessor :binary
  @@words = ["wink", "double blink", "close your eyes", "jump"]

  def initialize(n)
    @binary = n.to_i.to_s(2)
  end

  def to_binary_array
    results = []
    binary.reverse.split("").each_with_index do |b, idx|
      results << b + ("0" * idx)
    end
    results.select {|b| b.include?("1")}
  end

  def count_zero
    to_binary_array.map {|bi| bi.gsub(/1/, "").size}
  end

  def commands
    words = count_zero.map do |z|
      next if z == 4
      @@words[z]
    end

    words.include?(nil) ? words.reverse.compact : words
  end
end