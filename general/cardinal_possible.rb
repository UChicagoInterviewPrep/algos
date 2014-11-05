# PROBLEM:
# Given the relative positions (S, W, N, E, SW, NW, SE, NE) of some
# pairs of points on a 2D plane, determine whether it is possible. No two points
# have the same coordinates. e.g., if the input is "p1 SE p2, p2 SE p3, p3 SE
# p1", output "impossible".
#
# AUTHOR:
# Jonathan Jin

# NOTE:
# this obviously won't actually run; this is simply to show the logic that this
# problem would require. In actual interview, could go on to implement all the
# requisite structures and methods, if it gets to that.

exit if ARGV[0].nil?

relations = ARGV[0].split(",").map(&:strip)

x_list    = LinkedList.new
y_list    = LinkedList.new

relations.each do |relation|
  points  = [relation[0], relation[2]]
  relator = relation[1]

  if relator.include? "S" then x_list.find(points[1]).add_behind(points[0]) end
  if relator.include? "N" then x_list.find(points[1]).add_front(points[0]) end
  if relator.include? "W" then y_list.find(points[1]).add_behind(points[0]) end
  if relator.include? "E" then y_list.find(points[1]).add_front(points[0]) end
end

puts (x_list.has_cycle? or y_list.has_cycle?) ? "impossible" : "possible"
