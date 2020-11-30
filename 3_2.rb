# frozen_string_literal: true

require_relative './3_1.rb'

puts 'Enter the difference:'
dif = gets.to_f
p eval(0, 1, dif, &->(x) { Math.exp(x) / (x + 1) })
p eval(0, 2, dif) { |x| x * (x - 1) }