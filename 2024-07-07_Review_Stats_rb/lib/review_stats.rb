require 'csv'

class ReviewStats
  def self.process(csv_string)
    CSV.parse(csv_string, headers: true).map { |elem| elem["rating"].to_i }
  end

  def self.average(array)
    return 0 if array.empty?

    (array.sum / array.length.to_f).round(2)
  end

  def self.median(array)
    return 0 if array.empty?
  end

  def self.count(array)
    return 0 if array.empty?

    array.length
  end

  def self.output(values)
    "Average: #{values[:average]}\n"
    # "Count: #{values[:count]}\n" +
    # "Spread: #{values[:spread]}\n"
  end
end
