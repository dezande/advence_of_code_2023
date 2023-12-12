require 'minitest/autorun'
require_relative '../app/mirage_maintenance'

class MirageMaintenanceTest < Minitest::Test
  def test_hostory_score
    input = <<~END
      0 3 6 9 12 15
      1 3 6 10 15 21
      10 13 16 21 30 45
    END
    mirage_maintenance = MirageMaintenance.new(input)
    assert_equal 114, mirage_maintenance.history_sum
  end
end