# frozen_string_literal: true

require 'csv'
require_relative '../lib/plink.rb'

RSpec.describe Plink do
  it 'returns 1 for input 1' do
    expect(Plink.new.output(1)).to eq "1"
  end

  it 'returns Plink for input divisible by 3' do
    expect(Plink.new.output(3)).to eq 'Plink'
  end

  it 'returns Plank for input divisible by 5' do
    expect(Plink.new.output(5)).to eq 'Plank'
  end

  it 'returns PlinkPlank for input divisible by 3 and 5' do
    expect(Plink.new.output(15)).to eq 'PlinkPlank'
    expect(Plink.new.output(30)).to eq 'PlinkPlank'
    expect(Plink.new.output(45)).to eq 'PlinkPlank'
  end

  it 'returns PlinkPlankPlonk for input divisible by 3, 5, and 7' do
    expect(Plink.new.output(105)).to eq 'PlinkPlankPlonk'
    expect(Plink.new.output(210)).to eq 'PlinkPlankPlonk'
    expect(Plink.new.output(420)).to eq 'PlinkPlankPlonk'
  end

  it 'produces the right output up to 200' do
    filepath = "plink_output.csv"
    expected_array = []

    CSV.foreach(filepath) do |row|
      expected_array << row[0]
    end

    actual_array = (1..200).map { |number| Plink.new.output(number) }

    expect(actual_array).to eq expected_array
  end
end
