##encode
#count set to 0
#record string set to ''
#result string set to empty string
#loop through each letter and increment count
#record string
#if new letter, set count to zero, record string to new string and record result string
#if last letter, record string
#substitude 1 to empty string for single letter

##decode
#insert 1 for single letter
#split string into each pair
#split each pair into sub array of number and letters
#iterate array and build output

##edge
#return itself if input has space or lowercase

module RunLengthEncoding
  def self.encode(input)
    return input if invalid(input)

    build_encode(input).gsub(/1(\D)/, '\1')
  end

  def self.decode(input)
    return input if invalid(input)

    input_array = split_into_pairs(input)
    input_pairs = num_letter_array(input_array)

    input_pairs.map { |i| i[1] * i[0].to_i }.join('')
  end

  private

  def self.invalid(input)
    !input.scan(/[a-z]|\s/).empty?
  end

  def self.build_encode(input)
    encode_string = ''
    letter = input[0]
    count = 0
    last_index = (input.length - 1)

    input.chars.each_with_index do |i, idx|
      #same letter
      if i == letter
        count += 1
      end

      #new letter
      if i != letter
        encode_string += "#{count}#{letter}"
        letter = i
        count = 1
      end

      #last letter
      if idx == last_index
        encode_string += "#{count}#{letter}"        
      end
    end

    encode_string
  end

  def self.split_into_pairs(input)
    input.scan(/(\d*\D)/).flatten
  end

  def self.num_letter_array(array)
    array.map do |a|
      if a.length == 1
        a = "1#{a}"
      end
      
      a.scan(/(\d+)(\D)/).flatten
    end
  end
end