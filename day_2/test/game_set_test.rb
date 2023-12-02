require 'minitest/autorun'
require_relative '../app/game_set'

class GameTest < Minitest::Test
  def test_game_one
    line = '1 blue, 3 red, 19 green'
    bag = { red: 12, green: 13, blue: 14 }
    game_set = GameSet.new(line, bag)
    assert_equal 1, game_set.blue
    assert_equal 3, game_set.red
    assert_equal 19, game_set.green
    assert game_set.blue_valid?
    assert game_set.red_valid?
    refute game_set.green_valid?
    refute game_set.set_valid?
  end

  def test_game_two
    line = '3 blue, 4 red'
    bag = { red: 12, green: 13, blue: 14 }
    game_set = GameSet.new(line, bag)
    assert_equal 3, game_set.blue
    assert_equal 4, game_set.red
    assert_equal 0, game_set.green
    assert game_set.blue_valid?
    assert game_set.green_valid?
    assert game_set.red_valid?
    assert game_set.set_valid?
  end
end

