require 'minitest/autorun'
require_relative '../app/haunted_wasteland'

class HauntedWastelandTest < Minitest::Test
  def input_first
    <<-END
      RL

      AAA = (BBB, CCC)
      BBB = (DDD, EEE)
      CCC = (ZZZ, GGG)
      DDD = (DDD, DDD)
      EEE = (EEE, EEE)
      GGG = (GGG, GGG)
      ZZZ = (ZZZ, ZZZ)
    END
  end

  def test_step_input_one
    haunted_wasteland = HauntedWasteland.new(input_first)
    assert_equal haunted_wasteland.count_step, 2
  end

  def input_second
    <<-END
      LLR

      AAA = (BBB, BBB)
      BBB = (AAA, ZZZ)
      ZZZ = (ZZZ, ZZZ)
    END
  end

  def test_step_input_two
    haunted_wasteland = HauntedWasteland.new(input_second)
    assert_equal haunted_wasteland.count_step, 6
  end

  def input_third
    <<-END
        LR

        11A = (11B, XXX)
        11B = (XXX, 11Z)
        11Z = (11B, XXX)
        22A = (22B, XXX)
        22B = (22C, 22C)
        22C = (22Z, 22Z)
        22Z = (22B, 22B)
        XXX = (XXX, XXX)
    END
  end

  def test_step_input_third
    haunted_wasteland = HauntedWasteland.new(input_third)
    assert_equal haunted_wasteland.count_step_second, 6
  end
end