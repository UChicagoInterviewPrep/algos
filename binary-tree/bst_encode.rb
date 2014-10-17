# encode a binary tree

# AUTHOR: Jonathan Jin
#
# TASK: Encode a binary tree in a way that supports deserialization

class Tree
  def self.encode(node)
    if node.nil? then return [] end

    encoded_left  = if not node.left.nil?  then Tree.encode(node.left)  else [] end
    encoded_right = if not node.right.nil? then Tree.encode(node.right) else [] end

    return [node.value, encoded_left, encoded_right]
  end
end
