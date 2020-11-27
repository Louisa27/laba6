# frozen_string_literal: true

require_relative './2_1.rb'
puts 'Enter the accuracy:'
p Integral.new(gets.to_f).eval.map { |i| i }.last

