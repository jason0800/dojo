# frozen_string_literal: true

require 'fizz_buzz'

RSpec.describe FizzBuzz do # rubocop:disable Metrics/BlockLength
  it 'returns 1 for input 1' do
    expect(FizzBuzz.new.output(1)).to eq 1
  end

  it 'returns 2 for input 2' do
    expect(FizzBuzz.new.output(2)).to eq 2
  end

  it 'returns fizz for input 3' do
    expect(FizzBuzz.new.output(3)).to eq 'fizz'
  end

  it 'returns buzz for input 5' do
    expect(FizzBuzz.new.output(5)).to eq 'buzz'
  end

  it 'returns fizz for input 6' do
    expect(FizzBuzz.new.output(6)).to eq 'fizz'
  end

  it 'returns fizz buzz for input 15' do
    expect(FizzBuzz.new.output(15)).to eq 'fizz buzz'
  end

  it 'returns fizz buzz numbers 1 to 100' do # rubocop:disable Metrics/BlockLength
    expect(
      (1..100).map do |index|
        FizzBuzz.new.output(index)
      end
    ).to eq [
      1,
      2,
      'fizz',
      4,
      'buzz',
      'fizz',
      7,
      8,
      'fizz',
      'buzz',
      11,
      'fizz',
      13,
      14,
      'fizz buzz',
      16,
      17,
      'fizz',
      19,
      'buzz',
      'fizz',
      22,
      23,
      'fizz',
      'buzz',
      26,
      'fizz',
      28,
      29,
      'fizz buzz',
      31,
      32,
      'fizz',
      34,
      'buzz',
      'fizz',
      37,
      38,
      'fizz',
      'buzz',
      41,
      'fizz',
      43,
      44,
      'fizz buzz',
      46,
      47,
      'fizz',
      49,
      'buzz',
      'fizz',
      52,
      53,
      'fizz',
      'buzz',
      56,
      'fizz',
      58,
      59,
      'fizz buzz',
      61,
      62,
      'fizz',
      64,
      'buzz',
      'fizz',
      67,
      68,
      'fizz',
      'buzz',
      71,
      'fizz',
      73,
      74,
      'fizz buzz',
      76,
      77,
      'fizz',
      79,
      'buzz',
      'fizz',
      82,
      83,
      'fizz',
      'buzz',
      86,
      'fizz',
      88,
      89,
      'fizz buzz',
      91,
      92,
      'fizz',
      94,
      'buzz',
      'fizz',
      97,
      98,
      'fizz',
      'buzz'
    ]
  end
end
