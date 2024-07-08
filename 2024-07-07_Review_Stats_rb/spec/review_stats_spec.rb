require 'review_stats'

RSpec.describe ReviewStats do
  context "when CSV is empty" do
    let(:csv) { "" }

    it "returns an empty array" do
      expect(ReviewStats.process(csv)).to be_empty
    end
  end

  context "when CSV has 3 ratings" do
    let(:csv) do
      <<~EO_CSV
        rating
        1
        2
        3
      EO_CSV
    end

    it "returns an array of 3 ratings" do
      expect(ReviewStats.process(csv)).to eq([1, 2, 3])
    end
  end

  # Empty array
  context "when we have an empty array" do
    it "returns 0 for average" do
      input = []
      expect(ReviewStats.average(input)).to eq 0
    end

    it "returns 0 for median" do
      input = []
      expect(ReviewStats.median(input)).to eq 0
    end

    it "returns 0 for count" do
      input = []
      expect(ReviewStats.count(input)).to eq 0
    end

    it "returns 0 for spread" do
      input = []
      expect(ReviewStats.spread(input)).to eq 0
    end
  end

  # Array Calcs
  context "when we have an array with 3 numbers" do
    it "returns average of 3 numbers to 2 decimal places" do
      input = [1, 2, 2]
      expect(ReviewStats.average(input)).to eq 1.67
    end

    it "returns median of 5 numbers" do
      input = [1, 2, 3, 1, 8]
      expect(ReviewStats.median(input)).to eq 2
    end

    it "returns median of 12 numbers" do
      input = [1, 2, 2, 1, 7, 10, 5, 6, 1, -4, 8, 100]
      expect(ReviewStats.median(input)).to eq 3.5
    end

    it "returns count of 3 numbers" do
      input = [1, 2, 2]
      expect(ReviewStats.count(input)).to eq 3
    end

    it "returns spread of 3 numbers" do
      input = [1, 2, 2]
      hash = {1=>1, 2=>2}
      expect(ReviewStats.spread(input)).to eq hash
    end
  end

  # Display Only
  it "pretty displays our stats" do
    expect(ReviewStats.output(average: 0, median: 0, count: 0, spread: {})).to eq <<~EO_DISPLAY
      Average: 0
      Median: 0
      Count: 0
      Spread:
      5\s
      4\s
      3\s
      2\s
      1\s
    EO_DISPLAY
  end

  it "pretty displays our stats" do
    string = <<~EO_DISPLAY
      Average: 1.67
      Median: 2
      Count: 3
      Spread:
      5\s*****
      4\s******
      3\s****
      2\s**
      1\s*
    EO_DISPLAY

    expect(ReviewStats.output(average: 1.67, median: 2, count: 3, spread: {1=>1, 2=>2, 3=>4, 4=>6, 5=>5})).to eq string
  end
end
