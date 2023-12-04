class Card
  class << self
    def score(...)
      new(...).score
    end
  end

  attr_reader :card_string

  def initialize(card_string)
    @card_string = card_string
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

  def score
    common_numbers_size = common_numbers.size
    return 0 if common_numbers_size.zero?

    2**(common_numbers_size - 1)
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