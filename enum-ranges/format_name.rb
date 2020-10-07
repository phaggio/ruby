# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

def format_name(str)
  words = str.split(" ")
  
  words.each_with_index do |word, i|
  	words[i] = capitalize(word)
  end
  
  return words.join(" ")
end


def capitalize(word)
  return word[0].upcase + word[1..-1].downcase
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"