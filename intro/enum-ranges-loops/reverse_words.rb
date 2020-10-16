def reverse_words(sent)
  words = sent.split(" ")
  words.each { |word| word = word.reverse! }
  
  return words.join(" ")
end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'