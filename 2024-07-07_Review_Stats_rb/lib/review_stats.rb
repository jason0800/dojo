require 'csv'

class ReviewStats
  def initialize(csv_file)
    @csv_file = csv_file
    self.process
  end

  def process
    csv_string = File.read(@csv_file)
    @array = CSV.parse(csv_string, headers: true).map { |elem| elem["rating"].to_i }
  end

  def average
    return 0 if @array.empty?

    (@array.sum / @array.length.to_f).round(2)
  end

  def median
    return 0 if @array.empty?

    @array.sort!

    if @array.length % 2 != 0
      return @array[@array.length / 2]
    elsif @array.length % 2 == 0
      a = @array[@array.length / 2]
      b = @array[(@array.length / 2) - 1]

      return (a + b) / 2.to_f
    end
  end

  def count
    return 0 if @array.empty?

    @count = @array.length
  end

  def spread
    return 0 if @array.empty?

    @array.tally
  end

  def output
    array = [0, 0, 0, 0, 0]
    self.spread.each { |key, value| array[key - 1] = value } if self.spread != 0

    <<~EO_DISPLAY
      Average: #{self.average}
      Median: #{self.median}
      Count: #{self.count}
      Spread:
      5 #{"*" * array[4]}
      4 #{"*" * array[3]}
      3 #{"*" * array[2]}
      2 #{"*" * array[1]}
      1 #{"*" * array[0]}
    EO_DISPLAY
  end
end
