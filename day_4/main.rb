require_relative 'app/scratchcards'

input = File.read('input.txt')
scratchcards = Scratchcards.new(input)
puts scratchcards.score_sum
