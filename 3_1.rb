# frozen_string_literal: true

def eval(a_limit, b_limit, dif, lambda = nil, &block)
  block = lambda unless block_given?
  i = (b_limit - a_limit).to_f / dif
  result = 0
  a_limit.step(b_limit, i) { |x| result += block.call(x) }
  result *= i
end
