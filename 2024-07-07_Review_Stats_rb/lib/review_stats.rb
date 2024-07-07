require 'csv'

class ReviewStats
  def self.process(csv_string)
    CSV.parse(csv_string, headers: true).map{|elem| elem["rating"].to_i }
  end

  def self.average(array)
    if array.length == 0
      return 0
    end

    (array.sum / array.length.to_f).round(2)
  end

  def self.output(values)
    "Average: #{values[:average]}\n"
    # "Average: #{values[:average]}\n" +
    # "Count: #{values[:count]}\n" +
    # "Spread: #{values[:spread]}\n"
  end
end
