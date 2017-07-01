#generate array with elements

#first and last element will be 1

#fill middle element with the sum of numbers to the right 
#and left of the current position in the previous row

class Triangle
  attr_reader :row
  attr_accessor :pascal

  def initialize(row)
    @row = row
    @pascal = [[1], [1, 1]]
  end

  def middle_pascal
    middle = pascal.last
    middle.each_cons(2).map {|a| a.inject(:+)}.flatten
  end

  def rows
    return [[1]] if row == 1
    return pascal if row == 2
    count = row - 2

    count.times do
      new_row = [1] + middle_pascal + [1]
      self.pascal << new_row
    end

    pascal
  end
end