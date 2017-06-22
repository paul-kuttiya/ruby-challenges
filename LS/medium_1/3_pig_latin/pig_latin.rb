class PigLatin
  def self.translate(phrase)
    phrase.split(' ').map do |w|
      pig_latin(w)
    end.join(' ')
  end

  def self.pig_latin(word)
    index = word =~ /[aeiou]/i
    if begin_with_vowels(index) || begin_with_vowels_xy_xr(word)
      word + 'ay'
    elsif begin_with_squ_qu(word)
      word[(index + 1)..word.size] + word[0..index] + 'ay'
    else
      word[index..word.size] + word[0...index] + 'ay'
    end
  end

  private
  def self.begin_with_vowels(match_index)
    match_index == 0
  end

  def self.begin_with_squ_qu(word)
    word.match(/\Asqu|\Aqu/)
  end

  def self.begin_with_vowels_xy_xr(word)
    word.match(/\Ayt|\Axr/)
  end
end
