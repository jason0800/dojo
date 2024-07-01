require 'csv'

# range = 1..200

# def fizz_buzz_extended(number)
#   result = ""

#   result += "Plink" if (number % 3).zero?
#   result += "Plank" if (number % 5).zero?
#   result += "Plonk" if (number % 7).zero?

#   result.empty? ? number.to_s : result
# end

# # Prepare the CSV file
# CSV.open("fizz_buzz_extended.csv", "w") do |csv|
#   range.each do |number|
#     csv << [fizz_buzz_extended(number)]
#   end
# end

# puts "FizzBuzzExtended CSV file created successfully."

csv_file_path = 'data/fizz_buzz_extended.csv'

CSV.foreach(csv_file_path) do |row|
  puts row[0]
end
