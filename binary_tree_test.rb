gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'binary_tree'
require 'pry'

class BinarySearchTreeTest < Minitest::Test
  def test_class_exists
     tree = BinarySearchTree.new
     assert_equal BinarySearchTree, tree.class
  end

  def test_can_insert_1_item
    tree = BinarySearchTree.new
    result = tree.insert(61, "Bill & Ted's Excellent Adventure")
    assert_equal 61, tree.root_node.score
    assert_equal 0, result
  end

  def test_first_item_is_root_node
    tree = BinarySearchTree.new
    result = tree.insert(61, "Bill & Ted's Excellent Adventure")
    assert_equal 61, tree.root_node.score
  end

  def test_can_insert_second_item
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    #binding.pry
    result = tree.insert(16, "Johnny English")
    #binding.pry
    assert_equal 16, tree.root_node.node_left.score
    assert_equal 1, result
  end

  def test_second_item_is_first_item_left

    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    depth = tree.insert(16, "Johnny English")
    #binding.pry
    assert_equal 16, tree.root_node.node_left.score
    #assert_equal 1, depth
  end

  def test_right_and_left_nodes

    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    #binding.pry
    tree.insert(16, "Johnny English")
    node = tree.insert(92, "Sharknado 3")

    assert_equal 92, tree.root_node.node_right.score
  end

  def test_insert_four_items

    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    #binding.pry
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")
    #binding.pry
    assert_equal 61, tree.root_node.score
    assert_equal 16, tree.root_node.node_left.score
    assert_equal 92, tree.root_node.node_right.score
    assert_equal 50, tree.root_node.node_left.node_right.score
  end

  def test_minimum
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")
    assert_equal 16, tree.min
  end

  def test_maximum

    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")
    assert_equal 92, tree.max
  end

  def test_depth_of
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")
    result = tree.depth_of(50)
    assert_equal 2, result
  end

  def test_includes_61

    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")
    result = tree.include?(61)
    assert result
  end

end
