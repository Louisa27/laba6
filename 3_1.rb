# frozen_string_literal: true

def eval(a_limit, b_limit, dif)
  i = (b_limit - a_limit).to_f / dif
  a_limit.step(b_limit, i).map { |x| yield(x)}.sum*i
end
