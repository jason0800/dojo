require "fizz_buzz"

RSpec.describe FizzBuzz do
  it "returns 1 for input 1" do
    expect(FizzBuzz.new.output(1)).to eq 1
  end
end
