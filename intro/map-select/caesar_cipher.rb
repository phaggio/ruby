# Write a method caesar_cipher that takes in a string and a number. 
# The method should return a new string where every character of the original 
# is shifted num characters in the alphabet.

# Feel free to use this variable:
# alphabet = "abcdefghijklmnopqrstuvwxyz"

def caesar_cipher(str, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  word = ""
  str.each_char do |char|
    curr_index = alphabet.index(char)
    new_index = (curr_index + num) % 26
    word += alphabet[new_index]
  end

  return word
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"

