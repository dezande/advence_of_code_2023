class Card
  class << self
    def score(...)
      new(...).score
    end
  end

  attr_reader :card_string
  attr_accessor :copy

  def initialize(card_string)
    @card_string = card_string
    @copy = 1
  end

  def id
    split_card_name
      .first
      .scan(/\d+/)
      .first
      .to_i
  end

  def winning_numbers
    split_numbers
      .first
      .scan(/\d+/)
      .map(&:to_i)
  end

  def selected_numbers
    split_numbers
      .last
      .scan(/\d+/)
      .map(&:to_i)
  end

  def common_numbers
    selected_numbers & winning_numbers
  end

  def nb_common_numbers
    common_numbers.size
  end

  def score
    return 0 if nb_common_numbers.zero?

    2**(nb_common_numbers - 1)
  end

  private

  def split_card_name
    card_string.split(':')
  end

  def split_numbers
    split_card_name
      .last
      .split('|')
  end
end