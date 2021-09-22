require "./lib/docking_station.rb"
require "./lib/bike.rb"

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it "releases a bike" do
    station = DockingStation.new
    bike = station.release_bike
    expect(station.release_bike).to be_a(Bike)
    expect(bike).to be_working
  end
  describe "#dock" do
    it { is_expected.to respond_to(:dock).with(1).arguments }
    it "docks a bike" do
      # station = DockingStation.new
      # public_bike = Bike.new
      # station.dock(public_bike)
      #(these are one way of doing this vs line 17)
    end
    it "shows you what bike has been docked" do
      station = DockingStation.new
      public_bike = Bike.new
      station.dock(public_bike)
      expect(station.bikes).to eq bike
    end
  end
end
