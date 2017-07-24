class Robot
  @@letters = ('A'..'Z').to_a
  @@numbers = ('0'..'9').to_a
  @@robot_names = []
  
  attr_accessor :name

  def initialize
    @name = ''
    create_name
  end

  def create_name
    generate
    reset if same_name?
    store_name
  end

  def generate
    generate_name(@@letters, 2)
    generate_name(@@numbers, 3)    
  end

  def reset
    @@robot_names.delete(name)
    self.name = self.class.new.name
  end

  def self.robot_names
    @@robot_names
  end

  private
  def same_name?
    @@robot_names.include?(name)
  end

  def generate_name(array, size_times)
    size_times.times do
      self.name += array[rand(array.length)]
    end
  end

  def store_name
    @@robot_names << name
  end
end