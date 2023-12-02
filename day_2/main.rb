require_relative 'app/cube_conundrum'

input = File.read('input.txt')
cube_conundrum = CubeConundrum.new(input)
puts cube_conundrum.sum
