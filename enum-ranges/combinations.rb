# Write a method combinations that takes in an array of unique elements, 
# the method should return a 2D array representing all possible combinations of 2 elements of the array.

def combinations(arr)
  output = []

  arr.each_with_index do |el1, i|
    arr[i + 1..-1].each do |el2|
      output.push([el1, el2])
    end
  end

  return output
end

print combinations(["a", "b", "c"]); 
# => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); 
# => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts