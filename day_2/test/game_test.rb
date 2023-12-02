require 'minitest/autorun'
require_relative '../app/game'

class GameTest < Minitest::Test
  def test_extract_id
    line = 'Game 66: 1 blue, 3 red, 19 green; 3 red, 17 blue, 15 green; 9 green, 9 blue'
    assert_equal 66, Game.new(line).id
  end
end
