require "fizz_buzz"

RSpec.describe FizzBuzz do
  it "returns 1 for input 1" do
    expect(FizzBuzz.new.output(1)).to eq 1
  end

  it "returns 2 for input 2" do
    expect(FizzBuzz.new.output(2)).to eq 2
  end

  it "returns fizz for input 3" do
    expect(FizzBuzz.new.output(3)).to eq 'fizz'
  end
end
