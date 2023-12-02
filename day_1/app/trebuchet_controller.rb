require_relative 'trebuchet/row_controller'

class TrebuchetController
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def sum
    data
      .lines
      .sum { |line| Trebuchet::RowController.number(line) }
  end

  def sum_with_letter_and_number
    data
      .lines
      .sum { |line| Trebuchet::RowController.number_and_letter(line) }
  end
end
