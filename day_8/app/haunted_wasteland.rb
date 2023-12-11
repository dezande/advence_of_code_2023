require_relative 'node'

class HauntedWasteland
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def count_step
    current_step = 'AAA'
    count = 0

    while current_step != 'ZZZ'
      current_step = if navigators[count % navigators.count] == 'L'
        nodes[current_step].left
      else
        nodes[current_step].right
      end
      count += 1
    end

    count
  end

  private

  def nodes
    @nodes ||= data[2..].map { |line| Node.new(line) }.to_h { |node| [node.id, node] }
  end

  def navigators
    @navigators ||= data.first.scan(/\w/)
  end

  def data
    @data ||= input.lines
  end
end