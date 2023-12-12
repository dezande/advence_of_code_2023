require 'minitest/autorun'
require_relative '../app/history'

class HistoryTest < Minitest::Test
  def test_first_history
    history = History.new('0 3 6 9 12 15')
    assert_equal 18, history.value
  end

  def test_second_history
    history = History.new('1 3 6 10 15 21')
    assert_equal 28, history.value
  end

  def test_third_history
    history = History.new('10 13 16 21 30 45')
    assert_equal 68, history.value
  end

  def test_history_left
    history = History.new('10 13 16 21 30 45')
    assert_equal 5, history.left_value
  end
end