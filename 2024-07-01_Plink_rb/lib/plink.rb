# require 'csv'

# filepath = "fizz_buzz_extended.csv"
# array = []

# CSV.foreach(filepath) do |row|
#   array << row[0]
# end

# puts array

class Plink
  def output(number)
    result = ""

    result += "Plink" if (number % 3).zero?
    result += "Plank" if (number % 5).zero?
    result += "Plonk" if (number % 7).zero?

    result.empty? ? number.to_s : result
  end
end
