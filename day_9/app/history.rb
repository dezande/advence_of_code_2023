class History
  attr_reader :first_history

  def initialize(input)
    @first_history = input.split(' ').map(&:to_i)
  end

  def value
    response = []
    response << first_history

    until response.last.all? { |i| i.zero? }
      response << create_new_line(response.last)
    end

    response
      .reverse
      .inject(0) do |memo, line|
        memo += line.last
      end
  end

  def left_value
    response = []
    response << first_history

    until response.last.all? { |i| i.zero? }
      response << create_new_line(response.last)
    end

    response
      .reverse
      .inject(0) do |memo, line|
        memo = line.first - memo
      end
  end

  private
  
  def create_new_line(line)
    new_line = []
    new_line_size = line.size - 1

    for i in 0...new_line_size
      new_line << line[i + 1] - line[i]
    end

    new_line
  end

end