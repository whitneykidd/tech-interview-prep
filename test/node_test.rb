require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/node.rb"

class NodeTest < Minitest::Test
  def setup
    @node = Node.new('Burke')
  end

  def test_it_exists
    assert_instance_of Node, @node
  end

  def test_it_has_attributes
    assert_equal 'Burke', @node.data
  end

  def test_it_has_next_node
    assert_nil nil, @node.next_node
  end
end
