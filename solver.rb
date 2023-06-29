class Solver
  def factorial(n)
    factorial = 1
    if n < 0
      raise ArgumentError, 'Input must be a non-negative integer'
    elsif n == 0
      1
    else
      (1..n).each { |i| factorial *=i }
    end
    factorial
  end

  def reverse(str)
    str.reverse
  end
end




ex = Solver.new

puts ex.factorial(3)

puts ex.reverse('hello')