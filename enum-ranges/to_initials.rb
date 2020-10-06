def to_initials(name)
  arr = name.split(" ")
  output = ""
  arr.each { |word| output += word[0].upcase }
  
  return output
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"