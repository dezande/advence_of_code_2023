require_relative 'app/mirage_maintenance'

input = File.read('input.txt')
mirage_maintenance = MirageMaintenance.new(input)
puts mirage_maintenance.history_sum
