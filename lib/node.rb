class Node
  attr_reader :surname, :next_node
  def initialize(surname)
    @surname = surname
    @next_node = nil
  end

  def data
    @surname
  end
end

head = Node.new(1)
