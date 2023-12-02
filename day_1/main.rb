require_relative 'app/trebuchet_controller'

input = File.read('input.txt')
trebuchet = TrebuchetController.new(input)
puts trebuchet.sum
puts trebuchet.sum_with_letter_and_number
