class Game
  attr_reader :line

  def initialize(line)
    @line = line
  end

  def id
    line.scan(/\d+/).first.to_i
  end
end
