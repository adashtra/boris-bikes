class DockingStation
  attr_reader :bike

  def initialize
    @bike
  end

  def release_bike
    unless @bike
      raise "No bikes available"
    end
    return @bike
  end

  def dock(bike)
    @bike = bike
  end
end
