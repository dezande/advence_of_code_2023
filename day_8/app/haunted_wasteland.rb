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

  def count_step_second
		current_steps = nodes_id_finish_by('A')
    count = 0

    while current_steps.any? { |node|  node[-1] != 'Z' }
      current_steps = current_steps
        .map do |current_step|
          if navigators[count % navigators.count] == 'L'
            nodes[current_step].left
          else
            nodes[current_step].right
          end
        end
      count += 1
    end

    count
  end

  private

  def nodes_id_finish_by(letter)
    nodes
      .keys
			.select { |key| key[-1] == letter }
  end

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