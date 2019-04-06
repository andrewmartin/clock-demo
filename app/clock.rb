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

end