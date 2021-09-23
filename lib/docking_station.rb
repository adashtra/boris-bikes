class DockingStation
  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes available" if empty?
    @bikes.pop
  end

  def dock(bike)
    raise "Dock is full" if full?
    @bikes << bike
  end

  private

  def full?
    return true if bikes.length >= DEFAULT_CAPACITY
    false
  end

  def empty?
    return true if bikes.length == 0
    false
  end
end
