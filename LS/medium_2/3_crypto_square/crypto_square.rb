# remove space and punctuation, and downcase
# break input in rows with new line
# rows, cols create with perfect square
# cipher message

#logic
#use regex to remove get clean output
#find length for output
#find the sq root of the length then round up = n
#output message in array, with n chunk of letters for each row 
#re-arrange array element into new array, by each element index ~> use hash?
#join hash into string

class Crypto
  def initialize(message)
    @message = message.downcase.gsub(/\W/, '')
  end

  def normalize_plaintext
    @message
  end

  def size
    Math.sqrt(normalize_plaintext.length).ceil
  end

  def plaintext_segments
    # result = []
    # text = normalize_plaintext.chars

    # size.times do 
    #   result << text.shift(size).join('') if !text.empty?
    # end
    
    # result

    normalize_plaintext.scan(/.{1,#{size}}/) #concise way with .scan ruby API
  end

  def ciphertext
    cipher_join

    # re-arrange string element in array by index
    # plaintext_segments.map(&:chars).transpose.map(&:join)    
  end

  def normalize_ciphertext
    cipher_join(' ')
  end

  private
  def cipherhash
    result = {}

    plaintext_segments.each do |chunk|
      chunk.chars.each_with_index do |letter, idx|
        text = result[idx]
        result[idx] =  result[idx] || letter
        result[idx] += letter if !text.nil?
      end
    end

    result
  end

  def cipher_join(joiner='')
    cipherhash.map { |_, v| v}.join(joiner)    
  end
end

crypto = Crypto.new('Have a nice day. Feed the dog & chill out!')
p crypto.cipherhash