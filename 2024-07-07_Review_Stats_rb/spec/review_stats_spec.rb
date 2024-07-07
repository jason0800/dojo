require 'review_stats'

RSpec.describe ReviewStats do
  context "when CSV is empty" do
    let(:csv) { "" }

    it "returns an empty array" do
      expect(ReviewStats.process(csv)).to be_empty
    end
  end

  context "when CSV has 2 ratings" do
    let(:csv) do
      <<~EO_CSV
        rating
        1
        2
      EO_CSV
    end

    it "returns an array of 2 ratings" do
      expect(ReviewStats.process(csv)).to eq([1,2])
    end
  end

  context "when we have an empty array" do
    it "returns 0 for average" do
      input = []
      expect(ReviewStats.average(input)).to eq 0
    end
  end

  context "when we have an array with 3 numbers" do
    it "returns average of 3 numbers to 2 decimal places" do
      input = [1, 2, 2]
      expect(ReviewStats.average(input)).to eq 1.67
    end
  end

  # DISPLAY ONLY
  it "pretty displays our stats" do
    expect(ReviewStats.output(average: 0)).to eq <<~EO_DISPLAY
      Average: 0
    EO_DISPLAY
  end

  it "pretty displays our stats" do
    expect(ReviewStats.output(average: 1.67)).to eq <<~EO_DISPLAY
      Average: 1.67
    EO_DISPLAY
  end
end
