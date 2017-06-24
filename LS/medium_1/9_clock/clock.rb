class Clock
  attr_accessor :hours, :minutes, :total

  def initialize(hours, minutes)
    @total = (hours * 60) + minutes
    get_time
  end

  def get_time
    @hours, @minutes = [(total / 60).floor, total % 60]
  end

  def self.at(hours=0, minutes=0)
    new(hours, minutes)
  end

  def to_s
    exceed_twenty_four?
    "#{"%02d"%hours}:#{"%02d"%minutes}"
  end

  def +(num)
    self.total = total + num
    adjust_time
  end

  def -(num)
    self.total = total - num
    adjust_time
  end

  def adjust_time
    self.get_time
    self
  end

  def ==(time)
    self.to_s == time.to_s
  end

  def exceed_twenty_four?
    self.hours = hours % 24
  end
end