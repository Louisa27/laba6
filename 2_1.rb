# frozen_string_literal: true

ANS = 1.0 / 3
# poorboy
class Integral
  attr_accessor :eps, :a_limit, :b_limit

  def initialize(eps)
    @a_limit = 0
    @b_limit = 1
    @eps = eps
  end

  def func(argument)
    argument * Math.sqrt(1 - argument * argument)
  end

  def eval
    i = 10.0
    result = 0
    Enumerator.new do |y|
      while (result - ANS).abs > @eps
        i /= 10
        result = 0
        (@a_limit + i).step(@b_limit - i, i) { |x| result += func(x) }
        result += (func(@a_limit) + func(@b_limit)) / 2
        result *= i
        y.yield result
      end
    end
  end
end
