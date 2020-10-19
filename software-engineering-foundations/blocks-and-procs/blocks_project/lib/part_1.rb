def select_even_nums(nums)
  nums.select(&:even?)
end

def reject_puppies(dogs)
  dogs.reject { |dog| dog["age"] < 3 }
end

def count_positive_subarrays(arrays)
  arrays.count { |sub_arr| sub_arr.sum > 0 }
end

def aba_translate(word)
  new_word = ""
  vowels = "aeiou"
  word.each_char do |char|
    if vowels.include?(char)
      new_word += char + "b" + char
    else
      new_word += char
    end
  end

  new_word
end

def aba_array(words)
  words.map { |word| aba_translate(word) }
end


