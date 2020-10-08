# Write a method vowel_cipher that takes in a string and returns a new string 
# where every vowel becomes the next vowel in the alphabet.

def vowel_cipher(string)
  vowels = "aeiou"
  new_string = ""
  string.each_char do |char|
    if vowels.include?(char)
      curr_index = vowels.index(char)
      new_index = (curr_index + 1) % 5
      new_string += vowels[new_index]
    else
      new_string += char
    end
  end

  return new_string
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap
