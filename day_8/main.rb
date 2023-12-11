require_relative 'app/haunted_wasteland'

input = File.read('input.txt')
haunted_wasteland = HauntedWasteland.new(input)
puts haunted_wasteland.count_step
puts haunted_wasteland.count_step_second
