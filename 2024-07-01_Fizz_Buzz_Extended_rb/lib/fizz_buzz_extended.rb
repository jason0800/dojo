class FizzBuzzExtended
  def output(number)
    result = ""

    result += "Plink" if (number % 3).zero?
    result += "Plank" if (number % 5).zero?
    result += "Plonk" if (number % 7).zero?

    result.empty? ? number.to_s : result
  end
end
