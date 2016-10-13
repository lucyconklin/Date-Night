class Node
  attr_reader   :score,
                :title

  attr_accessor :node_right,
                :node_left,
                :depth

  def initialize(score, title)
    @score = score
    @title = title
    @node_right = nil
    @node_left = nil
    @depth = 0
  end

  def insert(score, title)
    if score < @score
      if @node_left == nil
        @node_left = Node.new(score, title)
      else
        @node_left.insert(score, title)
      end
    elsif score > @score
      if @node_right ==nil
        @node_right = Node.new(score, title)

      else
        @node_right.insert(score, title)
      end
    end
    @depth += 1
  end
end
