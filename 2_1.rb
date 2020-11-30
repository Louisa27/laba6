# frozen_string_literal: true
ANS = 1.0 / 3

class Integral
  
  include Enumerable, Math
  
  attr_accessor :a_limit, :b_limit

  def initialize(a_limit = 0, b_limit = 1)
    @a_limit = a_limit
    @b_limit = b_limit
  end
  
  def func(argument)
    argument * sqrt(1 - argument * argument)
  end
  
  def each
    i = 10.0
    loop do
      i /= 10
      result = (a_limit + i).step(b_limit - i, i).map { |x| func(x) }.sum
      result += (func(@a_limit) + func(@b_limit)) / 2
      result *= i
      yield result
    end
  end
  
  def eval(eps)
    each_with_index.find { |result, _| (result - ANS).abs < eps }
  end

  class << self
    def eval(eps)
      new.eval(eps)
    end
  end
end