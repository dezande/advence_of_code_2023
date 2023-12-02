require 'minitest/autorun'
require_relative '../app/trebuchet_controller'

class TrebuchetControllerTest < Minitest::Test
  def test_sum_the_single_number
    lines = '1abc2\n'
    assert_equal 12, TrebuchetController.new(lines).sum
  end

  def test_sum_of_multi_number
    lines = "1abc2\npqr3stu8vwx\na1b2c3d4e5f\ntreb7uchet\n"
    assert_equal 142, TrebuchetController.new(lines).sum
  end

  def test_sum_of_single_number_and_string
    lines = 'two1nine'
    assert_equal 29, TrebuchetController.new(lines).sum_with_letter_and_number
  end

  def test_sum_of_multi_number_and_string
    lines = "two1nine\neightwothree\nabcone2threexyz\nxtwone3four\n4nineeightseven2\nzoneight234\n7pqrstsixteen"
    assert_equal 281, TrebuchetController.new(lines).sum_with_letter_and_number
  end
end
