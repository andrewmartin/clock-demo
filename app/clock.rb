class Clock

  def initialize(time)
    @originalTime = time

    # some basic error checking
    if self.time.size != 2
      raise 'Time argument incorrect'
    end
  end

  # creates an array of integers for the time values,
  # useful in calculations to follow
  def time
    @originalTime.gsub(/[ (AM|PM)]/, '').split(':').map(&:to_f)
  end

  # access the hour
  def hour
    self.time[0]
  end

  # access the minute
  def min
    self.time[1]
  end

  # calculate the hour angle
  # 30 degrees per hour = 0.5 degrees / minute
  # 0.5 degrees per minute * total minutes
  def hour_angle
    0.5 * (self.hour * 60 + self.min)
  end

  # calculate the minute angle
  # the minute moves at a pace of 6 degrees a minute
  def min_angle
    6 * self.min
  end

  # calculate the angle
  def angle
    angle = (self.hour_angle - self.min_angle).abs
    [(360 - angle), angle].min
  end

end