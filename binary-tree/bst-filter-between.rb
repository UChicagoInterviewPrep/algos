# AUTHOR: Jonathan Jin
#
# TASK: Implement a BST filter-between function. assume that it is a BST of ints
class Tree
  #     6
  #  3    8
  # 1 4  7 10
  #
  # Tree.filter_between(above_tree, 4, 9)
  
  # expect [6, 8, 7]
  def self.filter_between(tree, gt, lt)
    out_list = []

    out_list << tree.value if tree.value > gt and tree.value < lt
    
    # 1. no left, no right
    # 2. yes left, no right
    # 3. no left, yes right
    # 4. yes left, yes right
  
    skip_left = tree.left.nil? or tree.left.value < gt
    skip_right = tree.right.nil? or tree.right.value > lt
    
    out_list << self.filter_between(tree.left, gt, lt) unless skip_left
    out_list << self.filter_between(tree.right, gt, lt) unless skip_right
     
    return out_list
  end
end
