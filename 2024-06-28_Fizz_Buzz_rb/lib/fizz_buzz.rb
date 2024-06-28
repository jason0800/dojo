# frozen_string_literal: true

# class to calculate fizz buzz number
class FizzBuzz
  def output(number)
    return 'fizz buzz' if (number % 3).zero? && (number % 5).zero?

    return 'buzz' if (number % 5).zero?
    return 'fizz' if (number % 3).zero?

    number
  end
end
