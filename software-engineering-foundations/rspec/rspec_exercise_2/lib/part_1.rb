def partition(arr, n)
  first_arr = []
  second_arr = []
  arr.each do |el|
    if el < n
      first_arr << el
    else
      second_arr << el
    end
  end

  [first_arr, second_arr]
end

def merge(hash_1, hash_2)
  output_hash = {}

  hash_1.each { |key, value| output_hash[key] = value }

  hash_2.each do |key, value|
    if output_hash.has_key?(key)
      output_hash[key] = value
    else
      output_hash[key] = value
    end
  end

  output_hash
end

def censor(sentence, curse_words)
  words = sentence.split(" ")

  words.each_with_index do |word, i|
    if curse_words.include?(word.downcase)
      new_word = ""
      vowels = "aeiouAEIOU"
      word.each_char do |char|
        if vowels.include?(char)
          new_word += "*"
        else
          new_word += char
        end
      end
      words[i] = new_word
    end
  end

  return words.join(" ")
end

def power_of_two?(num)
  quotient = num

  while quotient > 1
    if num % 2 == 0
      num = num / 2
      quotient = num
    else
      return false 
    end
  end

  true
end