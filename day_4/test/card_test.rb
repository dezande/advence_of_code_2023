require 'minitest/autorun'
require_relative '../app/card'

class CardTest < Minitest::Test
  def test_card_1
    card_string = 'Card 1: 41 48 83 86 17 | 83 86  6 31 17  9 48 53'
    card = Card.new(card_string)
    assert_equal 1, card.id
    assert_equal [41, 48, 83, 86, 17], card.winning_numbers
    assert_equal [83, 86, 6, 31, 17, 9, 48, 53], card.selected_numbers
    assert_equal [83, 86, 17, 48], card.common_numbers
    assert_equal 8, card.score
  end

  def test_card_2
    card_string = 'Card 2: 13 32 20 16 61 | 61 30 68 82 17 32 24 19'
    card = Card.new(card_string)
    assert_equal 2, card.id
    assert_equal [13, 32, 20, 16, 61], card.winning_numbers
    assert_equal [61, 30, 68, 82, 17, 32, 24, 19], card.selected_numbers
    assert_equal [61, 32], card.common_numbers
    assert_equal 2, card.score
  end

  def test_card_3
    card_string = 'Card 4: 41 92 73 84 69 | 59 84 76 51 58  5 54 83'
    card = Card.new(card_string)
    assert_equal 4, card.id
    assert_equal [41, 92, 73, 84, 69], card.winning_numbers
    assert_equal [59, 84, 76, 51, 58, 5, 54, 83], card.selected_numbers
    assert_equal [84], card.common_numbers
    assert_equal 1, card.score
  end

  def test_card_4
    card_string = 'Card 6: 31 18 13 56 72 | 74 77 10 23 35 67 36 11'
    card = Card.new(card_string)
    assert_equal 6, card.id
    assert_equal [31, 18, 13, 56, 72], card.winning_numbers
    assert_equal [74, 77, 10, 23, 35, 67, 36, 11], card.selected_numbers
    assert_equal [], card.common_numbers
    assert_equal 0, card.score
  end
end
