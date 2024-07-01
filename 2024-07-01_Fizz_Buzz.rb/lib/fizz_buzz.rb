class FizzBuzz
  def output(number)
    if (number % 3).zero? && (number % 5).zero?
      return 'FizzBuzz'
    elsif (number % 3).zero?
      return 'Fizz'
    elsif (number % 5).zero?
      return 'Buzz'
    end

    number
  end
end
