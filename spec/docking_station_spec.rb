require "./lib/docking_station.rb"

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it "releases a docked bike" do
    station = DockingStation.new
    bike = Bike.new
    station.dock(bike)
    expect(station.release_bike).to be_a(Bike)
    expect(bike).to be_working
  end

  it "raises an error when there are no bikes" do
    station = DockingStation.new
    expect { station.release_bike }.to raise_error("No bikes available")
  end

  describe "#dock" do
    it { is_expected.to respond_to(:dock).with(1).arguments } # query necessary?

    it "docks a bike" do
      station = DockingStation.new
      bike = Bike.new
      station.dock(bike)
      expect(station.bikes).to include(bike)
    end

    it "raises an error when the docking station is full" do
      station = DockingStation.new
      DockingStation::DEFAULT_CAPACITY.times { station.dock(Bike.new) }
      expect { station.dock(Bike.new) }.to raise_error("Dock is full")
    end
  end
end
