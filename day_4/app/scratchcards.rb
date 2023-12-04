require_relative 'card'

class Scratchcards
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def score_sum
    data
      .lines
      .sum { |line| Card.score(line) }
  end
end
