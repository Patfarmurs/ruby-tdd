class Solver
  def factorial(n)
    return 1 if n.zero?

    n * factorial(n - 1)
  end

  def find(n)
    raise ArgumentError, 'Argument must be greater than or equal to 0.' if n.negative?

    factorial(n)
  end

  def fizzbuzz(num)
    if (num % 5).zero? && (num % 3).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end

  def reverse(str)
    str.reverse
  end
end
