# Write a method pyramid_sum that takes in an array of numbers representing the base of a pyramid. 
# The function should return a 2D array representing a complete pyramid with the given base. 
# To construct a level of the pyramid, we take the sum of adjacent elements of the level below.

# For example, the base [1, 4, 6] gives us the following pyramid
#     15
#   5   10
# 1   4    6

def pyramid_sum(base)
  output = [base]
  while output.length < base.length
    new_sub_arr = []
    output[-1].each_with_index do |el, i|
      if i != (output[-1].length - 1)
        new_sub_arr << output[-1][i] + output[-1][i + 1]
      end
    end
    output << new_sub_arr
  end

  return output.reverse!
end

print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts

print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts


