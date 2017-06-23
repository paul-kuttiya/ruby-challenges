class School
  attr_reader :school

  def initialize
    @school = {}
  end

  def to_h
    hash = {}
    school.sort.each do |arr|
      hash[arr[0]] = arr[1].sort
    end

    hash
  end

  def add(student, classroom)
    school[classroom] ||= []
    school[classroom] << student 
  end

  def grade(classroom)
    school[classroom] ? school[classroom] : []
  end
end