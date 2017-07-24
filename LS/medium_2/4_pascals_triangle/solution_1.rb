class Triangle
  def initialize(number_of_rows)
    @number_of_rows = number_of_rows
    @output = [[1]]
  end

  def rows
    loop do
      return @output if @output.count == @number_of_rows
      @output << next_row(@output.last)
    end
  end

  def next_row(previous_row)
    previous_row
      .each_cons(2)
      .map { |pair| pair.reduce(:+) }
      .unshift(1)
      .push(1)
  end
end