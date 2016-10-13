gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'node'

class NodeTest < Minitest::Test
  def test_class_exists
     node = Node.new(2, "Robocop")
     assert_equal Node, node.class
  end

  def test_node_is_initialized_with_values
    node = Node.new(2, "Robocop")
    assert_equal 2, node.score
    assert_equal "Robocop", node.title
    assert_equal nil, node.node_right
    assert_equal nil, node.node_left
  end

end
