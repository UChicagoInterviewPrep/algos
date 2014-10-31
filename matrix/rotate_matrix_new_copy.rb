# QUESTION: Write a function that, given an m x n array, the value of m, and the
# value of n, returns a copy of said array rotated by 90 degrees clockwise.
#
# AUTHOR: Jonathan Jin

def get_mtx_rotated_90 mtx_in, h_original, w_original
  h_out = w_original
  w_out = h_original
  
  out = Array.new(h_out) { Array.new(w_out) { 0 } }

  mtx_in.each_with_index do |row_in, i|
    col_out = w_out - 1 - i

    row_in.each_with_index do |cell_in, j|
      out[j][col_out] = cell_in
    end
  end

  return out
end

# TESTING
mtx = [[1,2,3],
       [4,5,6],
       [7,8,9]]

mtx_rotated = get_mtx_rotated_90 mtx, 3, 3

mtx_rotated.each do |row|
  row.each do |col|
    print col
  end

  print "\n"
end
