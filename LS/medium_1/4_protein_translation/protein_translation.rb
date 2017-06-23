class InvalidCodonError < StandardError; end

module Translation
  @@protein = {
    Methionine: ["AUG"],
    Phenylalanine: ["UUU", "UUC"],
    Leucine: ["UUA", "UUG"],
    Serine: ["UCU", "UCC", "UCA", "UCG"],
    Tyrosine: ["UAU", "UAC"],
    Cysteine: ["UGU", "UGC"],
    Tryptophan: ["UGG"],
    STOP: ["UAA", "UAG", "UGA"]
  }

  def self.of_codon(strand)
    @@protein.each do |key, value|
      return key.to_s if value.include?(strand)
    end

    raise InvalidCodonError
  end

  def self.of_rna(strand)
    strand_arr = strand.scan(/\w{3}/)

    results = []
    strand_arr.each do |st|
      break if of_codon(st) == "STOP"
      results << of_codon(st)
    end

    results
  end
end