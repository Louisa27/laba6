# frozen_string_literal: true

require 'test/unit'
require_relative './2_1.rb'

# main test
class Test1 < Test::Unit::TestCase
  def test1
    [0.01, 0.001].each do |eps|
      assert_in_delta(ANS, Integral.new(eps).eval.map { |i| i }.last, eps)
    end
  end
end
