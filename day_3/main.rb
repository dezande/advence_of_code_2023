require_relative 'app/gear_ratios'

input = File.read('input.txt')
gear_ratios = GearRatios.new(input)
puts gear_ratios.sum
