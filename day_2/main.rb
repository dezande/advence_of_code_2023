require_relative 'app/cube_conundrum'

input = File.read('input.txt')
bag = { red: 12, green: 13, blue: 14 }
cube_conundrum = CubeConundrum.new(input, bag)
puts cube_conundrum.id_sum
