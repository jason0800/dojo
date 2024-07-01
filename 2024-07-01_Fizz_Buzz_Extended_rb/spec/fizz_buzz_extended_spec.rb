# frozen_string_literal: true

require_relative '../lib/fizz_buzz_extended.rb'

RSpec.describe FizzBuzzExtended do
  it 'returns 1 for input 1' do
    expect(FizzBuzzExtended.new.output(1)).to eq "1"
  end

  it 'returns Plink for input divisible by 3' do
    expect(FizzBuzzExtended.new.output(3)).to eq 'Plink'
  end

  it 'returns Plank for input divisible by 5' do
    expect(FizzBuzzExtended.new.output(5)).to eq 'Plank'
  end

  it 'returns PlinkPlank for input divisible by 3 and 5' do
    expect(FizzBuzzExtended.new.output(15)).to eq 'PlinkPlank'
    expect(FizzBuzzExtended.new.output(30)).to eq 'PlinkPlank'
    expect(FizzBuzzExtended.new.output(45)).to eq 'PlinkPlank'
  end

  it 'returns PlinkPlankPlonk for input divisible by 3, 5, and 7' do
    expect(FizzBuzzExtended.new.output(105)).to eq 'PlinkPlankPlonk'
    expect(FizzBuzzExtended.new.output(210)).to eq 'PlinkPlankPlonk'
    expect(FizzBuzzExtended.new.output(420)).to eq 'PlinkPlankPlonk'
  end
end
