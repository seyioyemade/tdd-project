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
    string = ''
    (1..num).each do |i|
      string += if (i % 3).zero? && (i % 5).zero?
                  'fizzbuzz'
                elsif (i % 3).zero?
                  'fizz'
                elsif (i % 5).zero?
                  'buzz'
                else
                  i.to_s
                end
    end
    string
  end
end

ex = Solver.new

puts ex.factorial(3)

puts ex.reverse('hello')
