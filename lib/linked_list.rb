require_relative './node.rb'
class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(beat)
    if @head == nil
      @head = Node.new(beat)
    else
      node = @head
    while node.next_node != nil
      node = node.next_node
    end
      node.next_node = Node.new(beat)
    end
  end

  def links
    links = []
    node = @head
    while node.next != nil
      links << node
      node = node.next
    end
    links << node
  end
end