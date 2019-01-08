require 'docking_station'

describe DockingStation do

  # it "responds to release_bike" do
  #   docking_station = DockingStation.new
  #   expect(docking_station).to respond_to('release_bike')
  # end

  it { should respond_to 'release_bike' }

  it "Should get a bike" do
    docking_station = DockingStation.new
    expect(docking_station.release_bike).to be_a Bike
  end

  it "Should be a working bike" do
    bike = DockingStation.new.release_bike
    expect(bike.working?).to eq(true)
  end
end
