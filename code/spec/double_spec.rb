require_relative '../double'

describe "double_num" do

  it "should double all the numbers" do
    expect(double_num(0)).to eq 0
  end

  it "should double 2 to 4" do
    expect(double_num(2)).to eq 4
  end

  it "should double 4 to 8" do
    expect(double_num(4)).to eq 8
  end
end
