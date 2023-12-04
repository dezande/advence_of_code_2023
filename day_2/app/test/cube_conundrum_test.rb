require 'minitest/autorun'
require_relative '../app/cube_conundrum'

class CubeConundrumTest < Minitest::Test
  def test_game_66
    lines = "Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green\n"
    lines += "Game 2: 1 blue, 2 green; 3 green, 4 blue, 1 red; 1 green, 1 blue\n" 
    lines += "Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red\n" 
    lines += "Game 4: 1 green, 3 red, 6 blue; 3 green, 6 red; 3 green, 15 blue, 14 red\n"
    lines += 'Game 5: 6 red, 1 blue, 3 green; 2 blue, 1 red, 2 green'
    bag = { red: 12, green: 13, blue: 14 }
    cube_conundrum = CubeConundrum.new(lines, bag)
    assert_equal 8, cube_conundrum.id_sum
    assert_equal 2286, cube_conundrum.power_sum
  end
end