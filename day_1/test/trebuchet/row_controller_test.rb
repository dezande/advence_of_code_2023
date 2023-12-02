require 'minitest/autorun'
require_relative '../../app/trebuchet/row_controller'

module Trebuchet
  class RowControllerTest < Minitest::Test
    def test_string_with_2_numbers
      input = '1abc2'
      assert_equal 12, Trebuchet::RowController.new(input).number
    end

    def test_string_with_5_numbers
      input = 'a1b2c3d4e5f'
      assert_equal 15, Trebuchet::RowController.new(input).number
    end

    def test_string_with_1_numbers
      input = 'treb7uchet'
      assert_equal 77, Trebuchet::RowController.new(input).number
    end

    def test_string_blank
      input = ''
      assert_equal 0, Trebuchet::RowController.new(input).number
    end

    def test_string_with_letter
      input = 'two1nine'
      assert_equal 29, Trebuchet::RowController.new(input).number_and_letter
    end

    def test_string_with_letter_and_number
      input = '7pqrstsixteen'
      assert_equal 76, Trebuchet::RowController.new(input).number_and_letter
    end

    def test_string_with_letter_no_number
      input = 'pqrstsirxteen'
      assert_equal 0, Trebuchet::RowController.new(input).number_and_letter
    end

    def test_string_with_number_in_boder
      input = 'pqrstsirxteen'
      assert_equal 0, Trebuchet::RowController.new(input).number_and_letter
    end

    def test_string_edge_case
      input = 'six8d145twoqcgkllqmkxmqphoneightt'
      assert_equal 68, Trebuchet::RowController.new(input).number_and_letter
    end
  end
end
