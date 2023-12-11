require 'minitest/autorun'
require_relative '../app/node'

class HauntedWastelandTest < Minitest::Test
  def test_left
    node = Node.new('BRR = (LVC, FSJ)')
    assert_equal node.left, 'LVC'
  end

  def test_right
    node = Node.new('BRR = (LVC, FSJ)')
    assert_equal node.right, 'FSJ'
  end

  def test_id
    node = Node.new('BRR = (LVC, FSJ)')
    assert_equal node.id, 'BRR'
  end
end