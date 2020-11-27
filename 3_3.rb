# frozen_string_literal: true

require 'test/unit'
require_relative './3_1.rb'

ANS1 = 1.12538608308327
ANS2 = 0.6666666666666667

# main test
class Test1 < Test::Unit::TestCase
  def test1
    assert_in_delta(ANS1, eval(0, 1, 1000, ->(x) { Math.exp(x) / (x + 1) }), 0.1)
    assert_in_delta(ANS2, eval(0, 2, 1000, ->(x) { x * (x - 1) }), 0.1)
    assert_in_delta(ANS1, eval(0, 1, 1000) { |x| Math.exp(x) / (x + 1) }, 0.1)
    assert_in_delta(ANS2, eval(0, 2, 1000) { |x| x * (x - 1) }, 0.1)
  end
end
