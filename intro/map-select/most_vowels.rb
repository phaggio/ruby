# Write a method most_vowels that takes in a sentence string 
# and returns the word of the sentence that contains the most vowels.

def most_vowels(sentence)
  words = sentence.split(" ")
  vowels = "aeiou"
  
  selected_word = ""
  max_count = 0
  
  words.each do |word|
    current_count = count_vowels(word)
    if current_count > max_count
      selected_word = word
      max_count = current_count
    end
  end
  
  return selected_word
end

def count_vowels(word)
  vowels = "aeiou"
  count = 0
  word.each_char do |char|
    if vowels.include?(char)
      count += 1
    end
  end

  return count
end

print most_vowels("what a wonderful life") #=> "wonderful"