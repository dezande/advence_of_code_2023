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

  private

  def sets
    line
      .split(':')
      .last
      .split(';')
  end
end
