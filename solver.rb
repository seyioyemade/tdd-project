class Solver
  def factorial(num)
    factorial = 1
    if num.negative?
      raise ArgumentError, 'Input must be a non-negative integer'
    elsif num.zero?
      1
    else
      (1..num).each { |i| factorial *= i }
    end

    factorial
  end

  def reverse(str)
    str.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end

