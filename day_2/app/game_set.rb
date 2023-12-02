class GameSet
  class << self
    def set_valid?(...)
      new(...).set_valid?
    end

    def blue(...)
      new(...).blue
    end

    def red(...)
      new(...).red
    end

    def green(...)
      new(...).green
    end
  end

  attr_reader :line, :bag

  def initialize(line, bag)
    @line = line.split(',')
    @bag = bag
  end

  def blue
    extract_number('blue')
  end

  def blue_valid?
    blue <= bag[:blue]
  end

  def red
    extract_number('red')
  end

  def red_valid?
    red <= bag[:red]
  end

  def green
    extract_number('green')
  end

  def green_valid?
    green <= bag[:green]
  end

  def set_valid?
    blue_valid? && red_valid? && green_valid?
  end

  private

  def extract_number(color)
    line
      .find { |set| Regexp.new(color).match?(set) }
      &.scan(/\d+/)
      &.first
      &.to_i || 0
  end
end
  