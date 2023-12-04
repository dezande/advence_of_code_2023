require_relative 'card'

class Scratchcards
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def score_sum
    cards.sum { |card| card.score }
  end

  def nb_copy
    cards_copy = Array.new(cards.size, 1)

    cards
      .each do |card|
        next if card.nb_common_numbers.zero?

        card
          .nb_common_numbers
          .times { |i| cards_copy[card.id + i] += cards_copy[card.id - 1] }
      end

    cards_copy.sum
  end

  def cards
    @cards = data.lines.map { |line| Card.new(line) }
  end
end
