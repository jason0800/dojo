# frozen_string_literal: true

require 'fizz_buzz'

RSpec.describe FizzBuzz do
  it 'returns 1 for input 1' do
    expect(FizzBuzz.new.output(1)).to eq 1
  end

  it 'returns Fizz for input divisible by 3' do
    expect(FizzBuzz.new.output(3)).to eq 'Fizz'
  end

  it 'returns Fizz for input divisible by 5' do
    expect(FizzBuzz.new.output(5)).to eq 'Buzz'
  end

  it 'returns FizzBuzz for input divisible by 3 and 5' do
    expect(FizzBuzz.new.output(15)).to eq 'FizzBuzz'
    expect(FizzBuzz.new.output(30)).to eq 'FizzBuzz'
    expect(FizzBuzz.new.output(45)).to eq 'FizzBuzz'
  end
end
