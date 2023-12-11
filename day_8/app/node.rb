class Node
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def id
    data[0]
  end

  def left
    data[1]
  end

  def right
    data[2]
  end

  private
  
  def data
    @data ||= input.scan(/\w+/)
  end
end
