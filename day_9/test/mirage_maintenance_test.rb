require 'minitest/autorun'
require_relative '../app/mirage_maintenance'

class MirageMaintenanceTest < Minitest::Test
  def test_history_score
    input = <<~END
      0 3 6 9 12 15
      1 3 6 10 15 21
      10 13 16 21 30 45
    END
    mirage_maintenance = MirageMaintenance.new(input)
    assert_equal 114, mirage_maintenance.history_sum
  end

  def test_history_left_score
    input = <<~END
      10 13 16 21 30 45
    END
    mirage_maintenance = MirageMaintenance.new(input)
    assert_equal 5, mirage_maintenance.history_left_sum
  end
end