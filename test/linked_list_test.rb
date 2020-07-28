require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/linked_list.rb"

class LinkedListTest < Minitest::Test
  def setup
    @list = LinkedList.new
  end
 
  def test_it_exists
    assert_instance_of LinkedList, @list
  end

  def test_it_has_attributes
    assert_nil @list.head
  end

  def test_append
    @list.append("West")
    assert_nil @list.head.next_node
  end
end


# > list = LinkedList.new
# => <LinkedList @head=nil #45678904567>
# > list.head
# => nil
# > list.append("West")
# => <Node @surname="West" @next_node=nil #5678904567890>
# > list
# => <LinkedList @head=<Node @surname="West" ... > #45678904567>
# > list.head.next_node
# => nil
# > list.count
# => 1
# > list.to_string
# => "The West family"