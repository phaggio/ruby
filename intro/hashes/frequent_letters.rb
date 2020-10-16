# Write a method frequent_letters that takes in a string and returns an array 
# containing the characters that appeared more than twice in the string.

def frequent_letters(string)
  output = []
  count_table = Hash.new(0)

  string.each_char do |char|
    count_table[char] += 1
    if count_table[char] == 3
      output.push(char)
    end
  end

  return output
end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts
