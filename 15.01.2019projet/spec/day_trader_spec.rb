require_relative '../lib/day_trader'

describe "the day_trader method" do
  it "best day for trader" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
    expect(day_trader([2, 63, 3, 15, 37, 30, 67, 55, 58])).to eq([2, 6])
  end
end