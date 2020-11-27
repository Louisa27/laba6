# frozen_string_literal: true

require 'test/unit'
require_relative './1_1.rb'

# main test
class Test1 < Test::Unit::TestCase
  def test1
    [0.001, 0.0001].each { |eps| assert_in_delta(ANS, Integral.new(eps).eval, eps) }
  end
end
