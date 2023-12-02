require_relative 'game_set'

class Game
  attr_reader :line, :bag

  def initialize(line, bag)
    @line = line
    @bag = bag
  end

  def id
    line.scan(/\d+/).first.to_i
  end

  def valid?
    sets.all? { |set| GameSet.set_valid?(set, bag) }
  end

  def blue_max
    sets
      .map { |set| GameSet.blue(set, bag) }
      .max
  end

  def red_max
    sets
      .map { |set| GameSet.red(set, bag) }
      .max
  end

  def green_max
    sets
      .map { |set| GameSet.green(set, bag) }
      .max
  end

  def power
    blue_max * red_max * green_max
  end

  private

  def sets
    line
      .split(':')
      .last
      .split(';')
  end
end
