require_relative 'game'

class CubeConundrum
  attr_reader :data, :bag

  def initialize(data, bag)
    @data = data
    @bag = bag
  end

  def id_sum
    data
      .lines
      .map { |line| Game.new(line, bag) }
      .select(&:valid?)
      .sum(&:id)
  end
end
