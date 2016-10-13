require_relative 'node'
# require 'movies'
require 'pry'

class BinarySearchTree
  attr_reader :root_node,
              :score,
              :title

  def initialize(score=nil, title=nil)
    @root_node = Node.new(score=nil, title=nil)
    @depth = 0
  end

  def insert(score, title)
    if @root_node.score == nil
       insert_root(score, title)
       return @depth
    else
      @root_node.insert(score, title)
      return depth_of(score)
    end
  end

  def insert_root(score, title)
    @root_node = Node.new(score, title)
  end

  def max
    node = @root_node
    until node.node_right == nil
      node = node.node_right
      return node.score
    end
  end

  def min
    node = @root_node
    until node.node_left == nil
      node = node.node_left
    return node.score
    end
  end

  # def load
  #   file_data = {}
  #   File.open('movies.txt', 'r') do |file|
  #     file.each_line do |line|
  #       line_data = line.split(',')
  #       file_data[line_data[0]] = line_data[1]
  #     end
  #   end
  # end

  def include?(score, node = @root_node)
    return false if node.nil?
    if score < node.score
      include?(score, node.node_left)
    elsif score > node.score
      include?(score, node.node_right)
    elsif score == node.score
      true
    else
      return node.score
    end
  end

  def depth_of(score)
    node = @root_node
    if score == node.node_left.score || node.node_right.score

    else
      if score > node.score
        node = node_right

      elsif score < node.score
        node = node.node_left

      end
      @depth += 1
    end
    @depth += 1
  end

  end
