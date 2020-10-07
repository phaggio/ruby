def first_in_array(arr, el1, el2)
  arr.each do |word|
    if word == el1 
      return el1
    elsif word == el2
      return el2
    end
  end
  
end

puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"